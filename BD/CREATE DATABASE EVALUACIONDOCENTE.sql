CREATE DATABASE EvaluacionDocentes
GO

USE EvaluacionDocentes
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auditoria](
	[Auditoria_ID] [int] IDENTITY(1,1) NOT NULL,
	[Usuario_ID] [int] NULL,
	[ModuloRequerimiento_ID] [int] NULL,
	[Auditoria_Fecha] [date] NULL,
	[Auditoria_Hora] [time](7) NULL,
	[Auditoria_Accion] [varchar](max) NULL,
	[Auditoria_Valor_Anterior] [varchar](max) NULL,
	[Auditoria_Valor_Actual] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Auditoria_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cargo](
	[Cargo_ID] [int] IDENTITY(1,1) NOT NULL,
	[Cargo_Nombre] [varchar](max) NULL,
	[Cargo_Descripcion] [varchar](max) NULL,
	[Cargo_Estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cargo_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CriterioEvaluacionDocente](
	[CriterioEvaluacionDocente_ID] [int] IDENTITY(1,1) NOT NULL,
	[Criterio_Nombre] [varchar](100) NULL,
	[Criterio_Tipo] [varchar](70) NULL,
	[Criterio_Valor] [int] NULL,
	[Criterio_Estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[CriterioEvaluacionDocente_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CriterioEvaluacionDocenteDetalle](
	[CriterioEvaluacionDocenteDetalle_ID] [int] IDENTITY(1,1) NOT NULL,
	[CriterioEvaluacionDocente_ID] [int] NULL,
	[CriterioDetalle_Nombre] [varchar](100) NULL,
	[CriterioDetalle_Valor] [decimal](5, 2) NULL,
	[CriterioDetalle_Estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[CriterioEvaluacionDocenteDetalle_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CriterioEvaluacionDocentePuntaje](
	[CriterioEvaluacionDocentePuntaje_ID] [int] IDENTITY(1,1) NOT NULL,
	[CriterioEvaluacionDocenteDetalle_ID] [int] NULL,
	[CriterioPuntaje_Nombre] [varchar](100) NULL,
	[CriterioPuntaje_Valor] [decimal](5, 2) NULL,
	[CriterioPuntaje_Estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[CriterioEvaluacionDocentePuntaje_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curso](
	[Curso_ID] [int] IDENTITY(1,1) NOT NULL,
	[PlanEstudio_ID] [int] NULL,
	[Semestre_ID] [int] NULL,
	[Curso_Ciclo] [int] NULL,
	[Curso_Codigo] [varchar](100) NULL,
	[Curso_Nombre] [varchar](200) NULL,
	[Curso_Credito] [int] NULL,
	[Curso_HT] [int] NULL,
	[Curso_HP] [int] NULL,
	[Curso_TH] [int] NULL,
	[Curso_Prerequisitos] [varchar](max) NULL,
	[Curso_Tipo] [varchar](100) NULL,
	[Curso_Estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Curso_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CursoCriterio](
	[CursoCriterio_ID] [int] IDENTITY(1,1) NOT NULL,
	[Curso_ID] [int] NULL,
	[CursoCriterio_Unidad] [int] NULL,
	[CursoCriterio_Unidad_Valor] [int] NULL,
	[CursoCriterio_Estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[CursoCriterio_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CursoCriterioDetalle](
	[CursoCriterioDetalle_ID] [int] IDENTITY(1,1) NOT NULL,
	[CursoCriterio_ID] [int] NULL,
	[CursoCriterioDetalle_Nombre] [varchar](200) NULL,
	[CursoCriterioDetalle_Valor] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CursoCriterioDetalle_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Docente](
	[Docente_ID] [int] IDENTITY(1,1) NOT NULL,
	[GradoAcademico_ID] [int] NULL,
	[TituloProfesional_ID] [int] NULL,
	[Docente_Dni] [int] NULL,
	[Docente_Codigo] [int] NULL,
	[Docente_Nombre] [varchar](200) NULL,
	[Docente_Apellido] [varchar](200) NULL,
	[Docente_Sexo] [char](1) NULL,
	[Docente_Email_Personal] [varchar](200) NULL,
	[Docente_Email_Virtual] [varchar](200) NULL,
	[Docente_Email_Institucional] [varchar](200) NULL,
	[Docente_Telefono] [int] NULL,
	[Docente_Condicion] [varchar](200) NULL,
	[Docente_Estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Docente_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocenteCurso](
	[DocenteCurso_ID] [int] IDENTITY(1,1) NOT NULL,
	[Docente_ID] [int] NULL,
	[Cargo_ID] [int] NULL,
	[DocenteCurso_Cursos] [varchar](max) NULL,
	[DocenteCurso_Estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[DocenteCurso_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocenteCursoDetalle](
	[DocenteCursoDetalle_ID] [int] IDENTITY(1,1) NOT NULL,
	[DocenteCurso_ID] [int] NULL,
	[DocenteCursoDetalle_Dia] [int] NULL,
	[DocenteCursoDetalle_Hora_Inicio] [time](7) NULL,
	[DocenteCursoDetalle_Hora_Fin] [time](7) NULL,
	[DocenteCursoDetalle_Lugar] [varchar](200) NULL,
	[DocenteCursoDetalle_Estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[DocenteCursoDetalle_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocenteCursoEstudiante](
	[DocenteCursoEstudiante_ID] [int] IDENTITY(1,1) NOT NULL,
	[DocenteCurso_ID] [int] NULL,
	[Estudiante_ID] [int] NULL,
	[DocenteCursoEstudiante_Fecha] [date] NULL,
	[DocenteCursoEstudiante_Hora] [time](7) NULL,
	[DocenteCursoEstudiante_Estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[DocenteCursoEstudiante_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocenteEspecialidad](
	[DocenteEspecialidad_ID] [int] IDENTITY(1,1) NOT NULL,
	[Docente_ID] [int] NULL,
	[DocenteEspecialidad_Nombre] [varchar](max) NULL,
	[DocenteEspecialidad_Estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[DocenteEspecialidad_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidad](
	[Especialidad_ID] [int] IDENTITY(1,1) NOT NULL,
	[Especialidad_Requerimiento] [varchar](max) NULL,
	[Especialidad_Estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Especialidad_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiante](
	[Estudiante_ID] [int] IDENTITY(1,1) NOT NULL,
	[Estudiante_Dni] [int] NULL,
	[Estudiante_Codigo] [int] NULL,
	[Estudiante_Nombre] [varchar](200) NULL,
	[Estudiante_Apellido] [varchar](200) NULL,
	[Estudiante_Sexo] [char](1) NULL,
	[Estudiante_Email_Personal] [varchar](200) NULL,
	[Estudiante_Email_Virtual] [varchar](200) NULL,
	[Estudiante_Telefono] [int] NULL,
	[Estudiante_Estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Estudiante_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EvaluacionDocente](
	[EvaluacionDocente_ID] [int] IDENTITY(1,1) NOT NULL,
	[CriterioEvaluacionDocente_ID] [int] NULL,
	[EvaluacionDocente_Datos] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[EvaluacionDocente_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evento](
	[Evento_ID] [int] IDENTITY(1,1) NOT NULL,
	[Semestre_ID] [int] NULL,
	[CriterioEvaluacionDocente_ID] [int] NULL,
	[Evento_Titulo] [varchar](200) NULL,
	[Evento_Fecha_Inicio] [date] NULL,
	[Evento_Fecha_Fin] [date] NULL,
	[Evento_Estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Evento_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventoAsistenciaDocente](
	[EventoAsistencia_ID] [int] NOT NULL,
	[EventoDetalle_ID] [int] NULL,
	[Asistencia_Docente] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[EventoAsistencia_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventoDetalle](
	[EventoDetalle_ID] [int] NOT NULL,
	[Evento_ID] [int] NULL,
	[EventoDetalle_Nombre] [varchar](200) NULL,
	[EventoDetalle_Descripcion] [varchar](max) NULL,
	[EventoDetalle_Lugar] [varchar](200) NULL,
	[EventoDetalle_Fecha] [date] NULL,
	[EventoDetalle_Hora_Inicio] [time](7) NULL,
	[EventoDetalle_Hora_Fin] [time](7) NULL,
	[EventoDetalle_Estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[EventoDetalle_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GradoAcademico](
	[GradoAcademico_ID] [int] IDENTITY(1,1) NOT NULL,
	[GradoAcademico_Nombre] [varchar](200) NULL,
	[GradoAcademico_Descripcion] [varchar](max) NULL,
	[GradoAcademico_Estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[GradoAcademico_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modulo](
	[Modulo_ID] [int] IDENTITY(1,1) NOT NULL,
	[Modulo_Nombre] [varchar](200) NULL,
	[Modulo_Icono] [varchar](200) NULL,
	[Modulo_Estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Modulo_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModuloRequerimiento](
	[ModuloRequerimiento_ID] [int] IDENTITY(1,1) NOT NULL,
	[Modulo_ID] [int] NULL,
	[ModuloRequerimiento_Nombre] [varchar](200) NULL,
	[ModuloRequerimiento_URL] [varchar](max) NULL,
	[ModuloRequerimiento_Visibilidad] [int] NULL,
	[ModuloRequerimiento_Estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[ModuloRequerimiento_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permiso](
	[Permiso_ID] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioRol_ID] [int] NULL,
	[Permiso_NivelAcceso] [varchar](max) NULL,
	[Permiso_Estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Permiso_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanEstudio](
	[PlanEstudio_ID] [int] IDENTITY(1,1) NOT NULL,
	[PlanEstudio_Nombre] [varchar](200) NULL,
	[PlanEstudio_Cantidad_Ciclos] [int] NULL,
	[PlanEstudio_Documento] [varchar](max) NULL,
	[Permiso_Estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[PlanEstudio_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[Rol_ID] [int] IDENTITY(1,1) NOT NULL,
	[Rol_Nombre] [varchar](100) NULL,
	[Rol_Descripcion] [varchar](max) NULL,
	[Rol_Estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Rol_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Semestre](
	[Semestre_ID] [int] IDENTITY(1,1) NOT NULL,
	[Semestre_Nombre] [varchar](200) NULL,
	[Semestre_Fecha_Inicio] [date] NULL,
	[Semestre_Fecha_Fin] [date] NULL,
	[Semestre_Estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Semestre_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TituloProfesional](
	[TituloProfesional_ID] [int] IDENTITY(1,1) NOT NULL,
	[TituloProfesional_Nombre] [varchar](200) NULL,
	[TituloProfesional_Descripcion] [varchar](max) NULL,
	[TituloProfesional_Estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[TituloProfesional_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Usuario_ID] [int] IDENTITY(1,1) NOT NULL,
	[Docente_ID] [int] NULL,
	[Usuario_Nombre] [varchar](100) NULL,
	[Usuario_Password] [varchar](100) NULL,
	[Usuario_Foto] [varchar](max) NULL,
	[Usuario_Carpeta] [varchar](max) NULL,
	[Usuario_Estado] [char](1) NULL
PRIMARY KEY CLUSTERED 
(
	[Usuario_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioRol](
	[UsuarioRol_ID] [int] IDENTITY(1,1) NOT NULL,
	[Usuario_ID] [int] NULL,
	[Rol_ID] [int] NULL,
	[UsuarioRol_Estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[UsuarioRol_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Auditoria]  WITH CHECK ADD FOREIGN KEY([Usuario_ID])
REFERENCES [dbo].[Usuario] ([Usuario_ID])
GO
ALTER TABLE [dbo].[CriterioEvaluacionDocenteDetalle]  WITH CHECK ADD FOREIGN KEY([CriterioEvaluacionDocente_ID])
REFERENCES [dbo].[CriterioEvaluacionDocente] ([CriterioEvaluacionDocente_ID])
GO
ALTER TABLE [dbo].[CriterioEvaluacionDocentePuntaje]  WITH CHECK ADD FOREIGN KEY([CriterioEvaluacionDocenteDetalle_ID])
REFERENCES [dbo].[CriterioEvaluacionDocenteDetalle] ([CriterioEvaluacionDocenteDetalle_ID])
GO
ALTER TABLE [dbo].[Curso]  WITH CHECK ADD FOREIGN KEY([PlanEstudio_ID])
REFERENCES [dbo].[PlanEstudio] ([PlanEstudio_ID])
GO
ALTER TABLE [dbo].[Curso]  WITH CHECK ADD FOREIGN KEY([Semestre_ID])
REFERENCES [dbo].[Semestre] ([Semestre_ID])
GO
ALTER TABLE [dbo].[CursoCriterio]  WITH CHECK ADD FOREIGN KEY([Curso_ID])
REFERENCES [dbo].[Curso] ([Curso_ID])
GO
ALTER TABLE [dbo].[CursoCriterioDetalle]  WITH CHECK ADD FOREIGN KEY([CursoCriterio_ID])
REFERENCES [dbo].[CursoCriterio] ([CursoCriterio_ID])
GO
ALTER TABLE [dbo].[Docente]  WITH CHECK ADD FOREIGN KEY([GradoAcademico_ID])
REFERENCES [dbo].[GradoAcademico] ([GradoAcademico_ID])
GO
ALTER TABLE [dbo].[Docente]  WITH CHECK ADD FOREIGN KEY([TituloProfesional_ID])
REFERENCES [dbo].[TituloProfesional] ([TituloProfesional_ID])
GO
ALTER TABLE [dbo].[DocenteCurso]  WITH CHECK ADD FOREIGN KEY([Cargo_ID])
REFERENCES [dbo].[Cargo] ([Cargo_ID])
GO
ALTER TABLE [dbo].[DocenteCurso]  WITH CHECK ADD FOREIGN KEY([Docente_ID])
REFERENCES [dbo].[Docente] ([Docente_ID])
GO
ALTER TABLE [dbo].[DocenteCursoDetalle]  WITH CHECK ADD FOREIGN KEY([DocenteCurso_ID])
REFERENCES [dbo].[DocenteCurso] ([DocenteCurso_ID])
GO
ALTER TABLE [dbo].[DocenteCursoEstudiante]  WITH CHECK ADD FOREIGN KEY([DocenteCurso_ID])
REFERENCES [dbo].[DocenteCurso] ([DocenteCurso_ID])
GO
ALTER TABLE [dbo].[DocenteCursoEstudiante]  WITH CHECK ADD FOREIGN KEY([Estudiante_ID])
REFERENCES [dbo].[Estudiante] ([Estudiante_ID])
GO
ALTER TABLE [dbo].[DocenteEspecialidad]  WITH CHECK ADD FOREIGN KEY([Docente_ID])
REFERENCES [dbo].[Docente] ([Docente_ID])
GO
ALTER TABLE [dbo].[EvaluacionDocente]  WITH CHECK ADD FOREIGN KEY([CriterioEvaluacionDocente_ID])
REFERENCES [dbo].[CriterioEvaluacionDocente] ([CriterioEvaluacionDocente_ID])
GO
ALTER TABLE [dbo].[Evento]  WITH CHECK ADD FOREIGN KEY([CriterioEvaluacionDocente_ID])
REFERENCES [dbo].[CriterioEvaluacionDocente] ([CriterioEvaluacionDocente_ID])
GO
ALTER TABLE [dbo].[Evento]  WITH CHECK ADD FOREIGN KEY([Semestre_ID])
REFERENCES [dbo].[Semestre] ([Semestre_ID])
GO
ALTER TABLE [dbo].[EventoAsistenciaDocente]  WITH CHECK ADD FOREIGN KEY([EventoDetalle_ID])
REFERENCES [dbo].[EventoDetalle] ([EventoDetalle_ID])
GO
ALTER TABLE [dbo].[EventoDetalle]  WITH CHECK ADD FOREIGN KEY([Evento_ID])
REFERENCES [dbo].[Evento] ([Evento_ID])
GO
ALTER TABLE [dbo].[ModuloRequerimiento]  WITH CHECK ADD FOREIGN KEY([Modulo_ID])
REFERENCES [dbo].[Modulo] ([Modulo_ID])
GO
ALTER TABLE [dbo].[Permiso]  WITH CHECK ADD FOREIGN KEY([UsuarioRol_ID])
REFERENCES [dbo].[UsuarioRol] ([UsuarioRol_ID])
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD FOREIGN KEY([Docente_ID])
REFERENCES [dbo].[Docente] ([Docente_ID])
GO
ALTER TABLE [dbo].[UsuarioRol]  WITH CHECK ADD FOREIGN KEY([Rol_ID])
REFERENCES [dbo].[Rol] ([Rol_ID])
GO
ALTER TABLE [dbo].[UsuarioRol]  WITH CHECK ADD FOREIGN KEY([Usuario_ID])
REFERENCES [dbo].[Usuario] ([Usuario_ID])
GO




