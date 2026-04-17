window.addEventListener('DOMContentLoaded', () => {
    const sideBar = document.getElementById('sideBar');
    const toggleBtn = document.getElementById('toggleBar');
    const closeBtn = document.getElementById('closeBar');

    closeBtn.addEventListener('click', () => {
        sideBar.classList.add('-translate-x-full');
    });

    toggleBtn.addEventListener('click', () => {
        sideBar.classList.toggle('-translate-x-full');
    });
});