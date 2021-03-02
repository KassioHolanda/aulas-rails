class WelcomeController < ApplicationController
  def index
    cookies[:curso] = "Curso de Ruby on Rails - Jackson Pires[cookies]"
    session[:cursos] = "Curso de Ruby on Rails - Jackson Pires [session]"
    @meu_nome = params[:nome]
    @meu_curso = params[:curso]
  end
end
