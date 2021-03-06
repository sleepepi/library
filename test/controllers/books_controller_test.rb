require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post :create, book: { author: @book.author, available: @book.available, borrower: @book.borrower, checkout_date: @book.checkout_date, name: @book.name, genre: @book.genre}
    end

    assert_redirected_to book_path(assigns(:book))
  end

  test "should create book with genre" do
    assert_difference('Book.count') do
      post :create, book: { author: @book.author, name: @book.name, genre: "fiction"}
    end

    assert_equal "fiction", assigns(:book).genre

    assert_redirected_to book_path(assigns(:book))
  end

  test "should show book" do
    get :show, id: @book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book
    assert_response :success
  end

  test "should update book" do
    patch :update, id: @book, book: { author: @book.author, available: @book.available, borrower: @book.borrower, checkout_date: @book.checkout_date, name: @book.name, genre: @book.genre }
    assert_redirected_to book_path(assigns(:book))
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete :destroy, id: @book
    end

    assert_redirected_to books_path
  end
end
