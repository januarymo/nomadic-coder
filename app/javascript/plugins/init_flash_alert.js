import Swal from 'sweetalert2/dist/sweetalert2.js'
import 'sweetalert2/src/sweetalert2.scss'

const initFlashAlert = () => {
  const flashAlert = document.querySelector(".flash-alert")


  if (flashAlert) {
    const title = flashAlert.querySelector(".flash-alert-content h3").innerText
    const info = flashAlert.querySelector(".flash-alert-content p").innerText
    flashAlert.style.display = "none"

    let timerInterval
    Swal.fire({
      title: title,
      html: info,
      timer: 4000,
      timerProgressBar: true,
      icon: 'success',

      onClose: () => {
        clearInterval(timerInterval)
      }
    }).then((result) => {
      /* Read more about handling dismissals below */
      if (result.dismiss === Swal.DismissReason.timer) {
        console.log('I was closed by the timer')
      }
    })
  }
}

export { initFlashAlert }
