module.exports = {
  content: [
    './resources/**/*.blade.php',
    './resources/**/*.js',
    './resources/**/*.vue',
  ],
  theme: {
    extend: {
      keyframes: {
        fadeIn: {
          '0%': { opacity: '0', transform: 'translateY(-20px)' },
          '100%': { opacity: '1', transform: 'translateY(0)' },
        }
      },
      animation: {
        fadeIn: 'fadeIn 0.6s ease-in-out forwards',
      },
      colors: {
        green: {
          500: '#48bb78',
          600: '#38a169',
        },
        yellow: {
          500: '#ecc94b',
          600: '#d69e2e',
        },
        form: '#20BAAB',
      },
    },
  },
  plugins: [],
};
