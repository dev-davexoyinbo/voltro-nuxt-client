<template>
  <footer id="app-footer">
    <div class="brand">
      <div class="logo-container">
        <img src="/logo-color-2.svg" alt="" />
      </div>
      <h6 class="heading-6">voltro secure</h6>
    </div>

    <div class="content">
      <div class="navigation">
        <p class="paragraph-large heading">Navigations</p>
        <ul>
          <li><a href="#">About</a></li>
          <li><a href="#">Sign up</a></li>
          <li><a href="#">Login</a></li>
        </ul>
      </div>
      <form action="" class="form">
        <p class="paragraph-large heading">Contact</p>
        <input type="email" placeholder="email@email.com" />
        <textarea name="" id="" rows="3" placeholder="enter text here..."></textarea>
      </form>
    </div>

    <div class="under-strip">
        &copy; voltro secure
    </div>
  </footer>
</template>

<style lang="scss">
@import "~assets/styles/variables";
@import "~assets/styles/topography";
#app-footer {
    background: white;
    & >* {
        padding: 24px var(--body-padding-x);
        
  }
  .under-strip {
      padding: 1.5rem var(--body-padding-x);
      color: white;
      background: $secondary-color;
      text-align: center;
  }
  .brand {
    display: flex;
    gap: 1rem;
    align-items: center;
    .logo-container {
      height: 40px;
      widows: 40px;

      img {
        height: 100%;
        width: 100%;
        object-fit: contain;
      }
    }
  }

  .content {
    display: flex;
    gap: 3rem;
    flex-wrap: wrap;
  }
  .heading {
    font-weight: 500;
    margin-bottom: 1rem;
  }

  .navigation {
    ul {
      list-style: none;
      a {
        color: $text-color;
        text-decoration: none;
      }
      li {
        margin-bottom: 0.5rem;
      }
    }
  }

  .form {
    display: flex;
    flex-direction: column;
    input,
    textarea {
        @include paragraph-small;
      outline: none;
      border: 1px solid $secondary-color;
      margin-bottom: 0.8rem;
      border-radius: 5px;
      padding: 8px;
      min-width: 250px;
    }
  }
}
</style>