.class public Lo/SQLiteAccessPermException;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lo/LegacyRequest;

.field private e:Lcom/facebook/imagepipeline/request/ImageRequest;

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:I

.field private q:I

.field private r:J

.field private s:I

.field private t:I

.field private u:J

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 25
    iput-wide v0, p0, Lo/SQLiteAccessPermException;->j:J

    .line 26
    iput-wide v0, p0, Lo/SQLiteAccessPermException;->h:J

    .line 27
    iput-wide v0, p0, Lo/SQLiteAccessPermException;->i:J

    .line 28
    iput-wide v0, p0, Lo/SQLiteAccessPermException;->g:J

    .line 29
    iput-wide v0, p0, Lo/SQLiteAccessPermException;->f:J

    .line 32
    iput-wide v0, p0, Lo/SQLiteAccessPermException;->k:J

    .line 33
    iput-wide v0, p0, Lo/SQLiteAccessPermException;->l:J

    const/4 v2, -0x1

    .line 36
    iput v2, p0, Lo/SQLiteAccessPermException;->m:I

    .line 41
    iput v2, p0, Lo/SQLiteAccessPermException;->t:I

    .line 42
    iput v2, p0, Lo/SQLiteAccessPermException;->s:I

    .line 45
    iput v2, p0, Lo/SQLiteAccessPermException;->p:I

    .line 47
    iput v2, p0, Lo/SQLiteAccessPermException;->q:I

    .line 48
    iput-wide v0, p0, Lo/SQLiteAccessPermException;->r:J

    .line 49
    iput-wide v0, p0, Lo/SQLiteAccessPermException;->u:J

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 109
    iput-wide p1, p0, Lo/SQLiteAccessPermException;->j:J

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 153
    iput-boolean p1, p0, Lo/SQLiteAccessPermException;->o:Z

    return-void
.end method

.method public b()Lo/Observable;
    .locals 35

    move-object/from16 v0, p0

    .line 177
    new-instance v32, Lo/Observable;

    move-object/from16 v1, v32

    iget-object v2, v0, Lo/SQLiteAccessPermException;->b:Ljava/lang/String;

    iget-object v3, v0, Lo/SQLiteAccessPermException;->c:Ljava/lang/String;

    iget-object v4, v0, Lo/SQLiteAccessPermException;->e:Lcom/facebook/imagepipeline/request/ImageRequest;

    iget-object v5, v0, Lo/SQLiteAccessPermException;->a:Ljava/lang/Object;

    iget-object v6, v0, Lo/SQLiteAccessPermException;->d:Lo/LegacyRequest;

    iget-wide v7, v0, Lo/SQLiteAccessPermException;->j:J

    iget-wide v9, v0, Lo/SQLiteAccessPermException;->h:J

    iget-wide v11, v0, Lo/SQLiteAccessPermException;->i:J

    iget-wide v13, v0, Lo/SQLiteAccessPermException;->g:J

    move-object/from16 v33, v1

    move-object/from16 v34, v2

    iget-wide v1, v0, Lo/SQLiteAccessPermException;->f:J

    move-wide v15, v1

    iget-wide v1, v0, Lo/SQLiteAccessPermException;->k:J

    move-wide/from16 v17, v1

    iget-wide v1, v0, Lo/SQLiteAccessPermException;->l:J

    move-wide/from16 v19, v1

    iget v1, v0, Lo/SQLiteAccessPermException;->m:I

    move/from16 v21, v1

    iget-object v1, v0, Lo/SQLiteAccessPermException;->n:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-boolean v1, v0, Lo/SQLiteAccessPermException;->o:Z

    move/from16 v23, v1

    iget v1, v0, Lo/SQLiteAccessPermException;->t:I

    move/from16 v24, v1

    iget v1, v0, Lo/SQLiteAccessPermException;->s:I

    move/from16 v25, v1

    iget v1, v0, Lo/SQLiteAccessPermException;->q:I

    move/from16 v26, v1

    iget-wide v1, v0, Lo/SQLiteAccessPermException;->r:J

    move-wide/from16 v27, v1

    iget-wide v1, v0, Lo/SQLiteAccessPermException;->u:J

    move-wide/from16 v29, v1

    iget-object v1, v0, Lo/SQLiteAccessPermException;->v:Ljava/lang/String;

    move-object/from16 v31, v1

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct/range {v1 .. v31}, Lo/Observable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lo/LegacyRequest;JJJJJJJILjava/lang/String;ZIIIJJLjava/lang/String;)V

    return-object v32
.end method

.method public b(I)V
    .locals 0

    .line 161
    iput p1, p0, Lo/SQLiteAccessPermException;->t:I

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 113
    iput-wide p1, p0, Lo/SQLiteAccessPermException;->h:J

    return-void
.end method

.method public b(Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lo/SQLiteAccessPermException;->e:Lcom/facebook/imagepipeline/request/ImageRequest;

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lo/SQLiteAccessPermException;->a:Ljava/lang/Object;

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 84
    iput p1, p0, Lo/SQLiteAccessPermException;->p:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 125
    iput-wide p1, p0, Lo/SQLiteAccessPermException;->f:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lo/SQLiteAccessPermException;->b:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    .line 89
    iget v0, p0, Lo/SQLiteAccessPermException;->p:I

    return v0
.end method

.method public d(I)V
    .locals 0

    .line 145
    iput p1, p0, Lo/SQLiteAccessPermException;->m:I

    return-void
.end method

.method public d(J)V
    .locals 0

    .line 117
    iput-wide p1, p0, Lo/SQLiteAccessPermException;->i:J

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lo/SQLiteAccessPermException;->n:Ljava/lang/String;

    return-void
.end method

.method public d(Lo/LegacyRequest;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lo/SQLiteAccessPermException;->d:Lo/LegacyRequest;

    return-void
.end method

.method public d(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 169
    :goto_0
    iput p1, p0, Lo/SQLiteAccessPermException;->q:I

    return-void
.end method

.method public e()V
    .locals 4

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lo/SQLiteAccessPermException;->c:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lo/SQLiteAccessPermException;->e:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 56
    iput-object v0, p0, Lo/SQLiteAccessPermException;->a:Ljava/lang/Object;

    .line 57
    iput-object v0, p0, Lo/SQLiteAccessPermException;->d:Lo/LegacyRequest;

    const-wide/16 v1, -0x1

    .line 59
    iput-wide v1, p0, Lo/SQLiteAccessPermException;->j:J

    .line 60
    iput-wide v1, p0, Lo/SQLiteAccessPermException;->i:J

    .line 61
    iput-wide v1, p0, Lo/SQLiteAccessPermException;->g:J

    .line 62
    iput-wide v1, p0, Lo/SQLiteAccessPermException;->f:J

    .line 64
    iput-wide v1, p0, Lo/SQLiteAccessPermException;->k:J

    .line 65
    iput-wide v1, p0, Lo/SQLiteAccessPermException;->l:J

    const/4 v3, 0x1

    .line 67
    iput v3, p0, Lo/SQLiteAccessPermException;->m:I

    .line 68
    iput-object v0, p0, Lo/SQLiteAccessPermException;->n:Ljava/lang/String;

    const/4 v3, 0x0

    .line 69
    iput-boolean v3, p0, Lo/SQLiteAccessPermException;->o:Z

    const/4 v3, -0x1

    .line 71
    iput v3, p0, Lo/SQLiteAccessPermException;->t:I

    .line 72
    iput v3, p0, Lo/SQLiteAccessPermException;->s:I

    .line 74
    iput v3, p0, Lo/SQLiteAccessPermException;->p:I

    .line 76
    iput v3, p0, Lo/SQLiteAccessPermException;->q:I

    .line 77
    iput-wide v1, p0, Lo/SQLiteAccessPermException;->r:J

    .line 78
    iput-wide v1, p0, Lo/SQLiteAccessPermException;->u:J

    .line 80
    iput-object v0, p0, Lo/SQLiteAccessPermException;->v:Ljava/lang/String;

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 165
    iput p1, p0, Lo/SQLiteAccessPermException;->s:I

    return-void
.end method

.method public e(J)V
    .locals 0

    .line 121
    iput-wide p1, p0, Lo/SQLiteAccessPermException;->g:J

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lo/SQLiteAccessPermException;->c:Ljava/lang/String;

    return-void
.end method

.method public f(J)V
    .locals 0

    .line 133
    iput-wide p1, p0, Lo/SQLiteAccessPermException;->l:J

    return-void
.end method

.method public g(J)V
    .locals 0

    .line 137
    iput-wide p1, p0, Lo/SQLiteAccessPermException;->r:J

    return-void
.end method

.method public h(J)V
    .locals 0

    .line 129
    iput-wide p1, p0, Lo/SQLiteAccessPermException;->k:J

    return-void
.end method

.method public i(J)V
    .locals 0

    .line 141
    iput-wide p1, p0, Lo/SQLiteAccessPermException;->u:J

    return-void
.end method
