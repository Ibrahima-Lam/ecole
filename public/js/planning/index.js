
import PlanningForm from './planning_form.js';

const addPlanningButton = document.getElementById("add-planning");
/**
 * @param dialog HtmlDialogElement
 */
const dialog = document.getElementById('dialog')
const closeButton = document.getElementById('close')

addPlanningButton.addEventListener('click', function (params) {
    const frm = new PlanningForm(dialog, null, callback)
    frm.show();
})

closeButton.addEventListener('click', function (params) {
    dialog.close();
})

const deletes = document.querySelectorAll('.delete')
deletes.forEach(element => {
    element.addEventListener('click', function (params) {
        const id = this.dataset.id
        PlanningForm.delete(id)
    })
});
const edits = document.querySelectorAll('.edit')
edits.forEach(element => {
    element.addEventListener('click', function (params) {
        const id = this.dataset.id
        const frm = new PlanningForm(dialog, id, callback)
        frm.show()

    })
});

function callback(data) {

    const tab = []
    for (const d of data) {
        const tr = document.getElementById("planning-" + d.idPlanning)
        if (!tr) continue;
        if ((d?.type_prof || d?.type_classe) && tab.find((e) => e == d.idPlanning)) tr.style.backgroundColor = 'red'
        else if (d?.type_classe) tr.style.backgroundColor = 'orange'
        else if (d?.type_prof) tr.style.backgroundColor = 'purple'
        tab.push(d.idPlanning)
    }

}