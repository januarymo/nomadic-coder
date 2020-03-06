import Swal from 'sweetalert2/dist/sweetalert2.js'
import 'sweetalert2/src/sweetalert2.scss'

const initFlashAlert = () => {
  const flashAlert = document.querySelector(".flash-alert")

  let timerInterval
    Swal.fire({
      title: 'Successfully Booked!',
      html: 'Your tutor will contact you to confirm.',
      timer: 4000,
      timerProgressBar: true,
      icon: 'success',
      // onBeforeOpen: () => {
      //   Swal.showLoading()
      //   timerInterval = setInterval(() => {
      //     const content = Swal.getContent()
      //     if (content) {
      //       const b = content.querySelector('b')
      //       if (b) {
      //         b.textContent = Swal.getTimerLeft()
      //       }
      //     }
      //   }, 100)
      // },
      onClose: () => {
        clearInterval(timerInterval)
      }
    }).then((result) => {
      /* Read more about handling dismissals below */
      if (result.dismiss === Swal.DismissReason.timer) {
        console.log('I was closed by the timer')
      }
    })

  if (flashAlert) {
    const content = flashAlert.querySelector(".flash-alert-content").innerText
    flashAlert.style.display = "none"
    Swal.fire(content)
  }
}

export { initFlashAlert }
