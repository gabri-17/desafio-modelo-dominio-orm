package com.devsuperior.dsevent.entities;

import jakarta.persistence.*;
import org.hibernate.query.Order;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "tb_categoria")
public class Categoria {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Auto-incremental no BD.
    private Integer id;
    private String descricao;

    @OneToMany(mappedBy = "categoria") // Nome do atributo lá da outra classe (Atividade).
    private List<Atividade> categorias = new ArrayList<>();

    public Categoria() {
    }

    public Categoria(Integer id, String descricao, List<Atividade> categorias) {
        this.id = id;
        this.descricao = descricao;
        this.categorias = categorias;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public List<Atividade> getCategorias() {
        return categorias;
    }
}
