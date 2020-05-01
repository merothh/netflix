.class public final Lo/Base64OutputStream;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final A:Ljava/lang/Boolean;

.field private final B:Ljava/lang/String;

.field private final C:Lcom/netflix/android/moneyball/fields/OptionField;

.field private final D:Ljava/lang/String;

.field private final E:Ljava/lang/String;

.field private final F:Ljava/lang/String;

.field private final G:Z

.field private final H:Ljava/lang/String;

.field private final I:Ljava/lang/String;

.field private final K:Ljava/lang/String;

.field private final a:Z

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Z

.field private final f:Lcom/netflix/android/moneyball/fields/ChoiceField;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/netflix/android/moneyball/fields/OptionField;

.field private final i:Z

.field private final j:Ljava/lang/String;

.field private k:Lcom/netflix/android/moneyball/fields/StringField;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private n:Lcom/netflix/android/moneyball/fields/StringField;

.field private final o:Ljava/lang/String;

.field private final p:Z

.field private final q:Lcom/netflix/android/moneyball/fields/StringField;

.field private final r:Lcom/netflix/android/moneyball/fields/StringField;

.field private final s:Z

.field private final t:Ljava/lang/String;

.field private final u:Lcom/netflix/android/moneyball/fields/ActionField;

.field private final v:Ljava/lang/String;

.field private final w:Ljava/lang/String;

.field private final x:I

.field private final y:Lcom/netflix/android/moneyball/fields/ActionField;

.field private final z:Lcom/netflix/android/moneyball/fields/ActionField;


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZZZZLcom/netflix/android/moneyball/fields/ChoiceField;Lcom/netflix/android/moneyball/fields/OptionField;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/StringField;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/android/moneyball/fields/ActionField;ILcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/OptionField;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "ZZZZ",
            "Lcom/netflix/android/moneyball/fields/ChoiceField;",
            "Lcom/netflix/android/moneyball/fields/OptionField;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netflix/android/moneyball/fields/StringField;",
            "Lcom/netflix/android/moneyball/fields/StringField;",
            "Lcom/netflix/android/moneyball/fields/StringField;",
            "Lcom/netflix/android/moneyball/fields/StringField;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netflix/android/moneyball/fields/ActionField;",
            "I",
            "Lcom/netflix/android/moneyball/fields/ActionField;",
            "Lcom/netflix/android/moneyball/fields/ActionField;",
            "Lcom/netflix/android/moneyball/fields/OptionField;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput-boolean v1, v0, Lo/Base64OutputStream;->a:Z

    move-object v1, p2

    iput-object v1, v0, Lo/Base64OutputStream;->c:Ljava/lang/String;

    move v1, p3

    iput-boolean v1, v0, Lo/Base64OutputStream;->b:Z

    move v1, p4

    iput-boolean v1, v0, Lo/Base64OutputStream;->e:Z

    move v1, p5

    iput-boolean v1, v0, Lo/Base64OutputStream;->d:Z

    move v1, p6

    iput-boolean v1, v0, Lo/Base64OutputStream;->i:Z

    move-object v1, p7

    iput-object v1, v0, Lo/Base64OutputStream;->f:Lcom/netflix/android/moneyball/fields/ChoiceField;

    move-object v1, p8

    iput-object v1, v0, Lo/Base64OutputStream;->h:Lcom/netflix/android/moneyball/fields/OptionField;

    move-object v1, p9

    iput-object v1, v0, Lo/Base64OutputStream;->j:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lo/Base64OutputStream;->g:Ljava/util/List;

    move-object v1, p11

    iput-object v1, v0, Lo/Base64OutputStream;->m:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lo/Base64OutputStream;->o:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lo/Base64OutputStream;->l:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lo/Base64OutputStream;->k:Lcom/netflix/android/moneyball/fields/StringField;

    move-object/from16 v1, p15

    iput-object v1, v0, Lo/Base64OutputStream;->n:Lcom/netflix/android/moneyball/fields/StringField;

    move-object/from16 v1, p16

    iput-object v1, v0, Lo/Base64OutputStream;->r:Lcom/netflix/android/moneyball/fields/StringField;

    move-object/from16 v1, p17

    iput-object v1, v0, Lo/Base64OutputStream;->q:Lcom/netflix/android/moneyball/fields/StringField;

    move/from16 v1, p18

    iput-boolean v1, v0, Lo/Base64OutputStream;->p:Z

    move/from16 v1, p19

    iput-boolean v1, v0, Lo/Base64OutputStream;->s:Z

    move-object/from16 v1, p20

    iput-object v1, v0, Lo/Base64OutputStream;->t:Ljava/lang/String;

    move-object/from16 v1, p21

    iput-object v1, v0, Lo/Base64OutputStream;->v:Ljava/lang/String;

    move-object/from16 v1, p22

    iput-object v1, v0, Lo/Base64OutputStream;->w:Ljava/lang/String;

    move-object/from16 v1, p23

    iput-object v1, v0, Lo/Base64OutputStream;->u:Lcom/netflix/android/moneyball/fields/ActionField;

    move/from16 v1, p24

    iput v1, v0, Lo/Base64OutputStream;->x:I

    move-object/from16 v1, p25

    iput-object v1, v0, Lo/Base64OutputStream;->y:Lcom/netflix/android/moneyball/fields/ActionField;

    move-object/from16 v1, p26

    iput-object v1, v0, Lo/Base64OutputStream;->z:Lcom/netflix/android/moneyball/fields/ActionField;

    move-object/from16 v1, p27

    iput-object v1, v0, Lo/Base64OutputStream;->C:Lcom/netflix/android/moneyball/fields/OptionField;

    move-object/from16 v1, p28

    iput-object v1, v0, Lo/Base64OutputStream;->A:Ljava/lang/Boolean;

    move-object/from16 v1, p29

    iput-object v1, v0, Lo/Base64OutputStream;->D:Ljava/lang/String;

    move-object/from16 v1, p30

    iput-object v1, v0, Lo/Base64OutputStream;->B:Ljava/lang/String;

    move-object/from16 v1, p31

    iput-object v1, v0, Lo/Base64OutputStream;->I:Ljava/lang/String;

    move-object/from16 v1, p32

    iput-object v1, v0, Lo/Base64OutputStream;->E:Ljava/lang/String;

    move/from16 v1, p33

    iput-boolean v1, v0, Lo/Base64OutputStream;->G:Z

    move-object/from16 v1, p34

    iput-object v1, v0, Lo/Base64OutputStream;->F:Ljava/lang/String;

    move-object/from16 v1, p35

    iput-object v1, v0, Lo/Base64OutputStream;->H:Ljava/lang/String;

    move-object/from16 v1, p36

    iput-object v1, v0, Lo/Base64OutputStream;->K:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1

    .line 451
    iget-object v0, p0, Lo/Base64OutputStream;->H:Ljava/lang/String;

    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .locals 1

    .line 452
    iget-object v0, p0, Lo/Base64OutputStream;->K:Ljava/lang/String;

    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    .line 450
    iget-object v0, p0, Lo/Base64OutputStream;->F:Ljava/lang/String;

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 418
    iget-object v0, p0, Lo/Base64OutputStream;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 421
    iget-boolean v0, p0, Lo/Base64OutputStream;->d:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 417
    iget-boolean v0, p0, Lo/Base64OutputStream;->a:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 420
    iget-boolean v0, p0, Lo/Base64OutputStream;->e:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 419
    iget-boolean v0, p0, Lo/Base64OutputStream;->b:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/Base64OutputStream;

    if-eqz v0, :cond_0

    check-cast p1, Lo/Base64OutputStream;

    iget-boolean v0, p0, Lo/Base64OutputStream;->a:Z

    iget-boolean v1, p1, Lo/Base64OutputStream;->a:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/Base64OutputStream;->c:Ljava/lang/String;

    iget-object v1, p1, Lo/Base64OutputStream;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/Base64OutputStream;->b:Z

    iget-boolean v1, p1, Lo/Base64OutputStream;->b:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/Base64OutputStream;->e:Z

    iget-boolean v1, p1, Lo/Base64OutputStream;->e:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/Base64OutputStream;->d:Z

    iget-boolean v1, p1, Lo/Base64OutputStream;->d:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/Base64OutputStream;->i:Z

    iget-boolean v1, p1, Lo/Base64OutputStream;->i:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/Base64OutputStream;->f:Lcom/netflix/android/moneyball/fields/ChoiceField;

    iget-object v1, p1, Lo/Base64OutputStream;->f:Lcom/netflix/android/moneyball/fields/ChoiceField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Base64OutputStream;->h:Lcom/netflix/android/moneyball/fields/OptionField;

    iget-object v1, p1, Lo/Base64OutputStream;->h:Lcom/netflix/android/moneyball/fields/OptionField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Base64OutputStream;->j:Ljava/lang/String;

    iget-object v1, p1, Lo/Base64OutputStream;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Base64OutputStream;->g:Ljava/util/List;

    iget-object v1, p1, Lo/Base64OutputStream;->g:Ljava/util/List;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Base64OutputStream;->m:Ljava/lang/String;

    iget-object v1, p1, Lo/Base64OutputStream;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Base64OutputStream;->o:Ljava/lang/String;

    iget-object v1, p1, Lo/Base64OutputStream;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Base64OutputStream;->l:Ljava/lang/String;

    iget-object v1, p1, Lo/Base64OutputStream;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Base64OutputStream;->k:Lcom/netflix/android/moneyball/fields/StringField;

    iget-object v1, p1, Lo/Base64OutputStream;->k:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Base64OutputStream;->n:Lcom/netflix/android/moneyball/fields/StringField;

    iget-object v1, p1, Lo/Base64OutputStream;->n:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Base64OutputStream;->r:Lcom/netflix/android/moneyball/fields/StringField;

    iget-object v1, p1, Lo/Base64OutputStream;->r:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Base64OutputStream;->q:Lcom/netflix/android/moneyball/fields/StringField;

    iget-object v1, p1, Lo/Base64OutputStream;->q:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/Base64OutputStream;->p:Z

    iget-boolean v1, p1, Lo/Base64OutputStream;->p:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/Base64OutputStream;->s:Z

    iget-boolean v1, p1, Lo/Base64OutputStream;->s:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/Base64OutputStream;->t:Ljava/lang/String;

    iget-object v1, p1, Lo/Base64OutputStream;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Base64OutputStream;->v:Ljava/lang/String;

    iget-object v1, p1, Lo/Base64OutputStream;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Base64OutputStream;->w:Ljava/lang/String;

    iget-object v1, p1, Lo/Base64OutputStream;->w:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Base64OutputStream;->u:Lcom/netflix/android/moneyball/fields/ActionField;

    iget-object v1, p1, Lo/Base64OutputStream;->u:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/Base64OutputStream;->x:I

    iget v1, p1, Lo/Base64OutputStream;->x:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/Base64OutputStream;->y:Lcom/netflix/android/moneyball/fields/ActionField;

    iget-object v1, p1, Lo/Base64OutputStream;->y:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Base64OutputStream;->z:Lcom/netflix/android/moneyball/fields/ActionField;

    iget-object v1, p1, Lo/Base64OutputStream;->z:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Base64OutputStream;->C:Lcom/netflix/android/moneyball/fields/OptionField;

    iget-object v1, p1, Lo/Base64OutputStream;->C:Lcom/netflix/android/moneyball/fields/OptionField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Base64OutputStream;->A:Ljava/lang/Boolean;

    iget-object v1, p1, Lo/Base64OutputStream;->A:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Base64OutputStream;->D:Ljava/lang/String;

    iget-object v1, p1, Lo/Base64OutputStream;->D:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Base64OutputStream;->B:Ljava/lang/String;

    iget-object v1, p1, Lo/Base64OutputStream;->B:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Base64OutputStream;->I:Ljava/lang/String;

    iget-object v1, p1, Lo/Base64OutputStream;->I:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Base64OutputStream;->E:Ljava/lang/String;

    iget-object v1, p1, Lo/Base64OutputStream;->E:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/Base64OutputStream;->G:Z

    iget-boolean v1, p1, Lo/Base64OutputStream;->G:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/Base64OutputStream;->F:Ljava/lang/String;

    iget-object v1, p1, Lo/Base64OutputStream;->F:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Base64OutputStream;->H:Ljava/lang/String;

    iget-object v1, p1, Lo/Base64OutputStream;->H:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Base64OutputStream;->K:Ljava/lang/String;

    iget-object p1, p1, Lo/Base64OutputStream;->K:Ljava/lang/String;

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 427
    iget-object v0, p0, Lo/Base64OutputStream;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lo/Base64OutputStream;->g:Ljava/util/List;

    return-object v0
.end method

.method public final h()Lcom/netflix/android/moneyball/fields/OptionField;
    .locals 1

    .line 424
    iget-object v0, p0, Lo/Base64OutputStream;->h:Lcom/netflix/android/moneyball/fields/OptionField;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Lo/Base64OutputStream;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/Base64OutputStream;->c:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/Base64OutputStream;->b:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/Base64OutputStream;->e:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/Base64OutputStream;->d:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/Base64OutputStream;->i:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :cond_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/Base64OutputStream;->f:Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/Base64OutputStream;->h:Lcom/netflix/android/moneyball/fields/OptionField;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/Base64OutputStream;->j:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/Base64OutputStream;->g:Ljava/util/List;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/Base64OutputStream;->m:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/Base64OutputStream;->o:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/Base64OutputStream;->l:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_c
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/Base64OutputStream;->k:Lcom/netflix/android/moneyball/fields/StringField;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_d
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/Base64OutputStream;->n:Lcom/netflix/android/moneyball/fields/StringField;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_e
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/Base64OutputStream;->r:Lcom/netflix/android/moneyball/fields/StringField;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_f
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/Base64OutputStream;->q:Lcom/netflix/android/moneyball/fields/StringField;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_10
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/Base64OutputStream;->p:Z

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    :cond_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/Base64OutputStream;->s:Z

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    :cond_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/Base64OutputStream;->t:Ljava/lang/String;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_13
    const/4 v2, 0x0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/Base64OutputStream;->v:Ljava/lang/String;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_d

    :cond_14
    const/4 v2, 0x0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/Base64OutputStream;->w:Ljava/lang/String;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_e

    :cond_15
    const/4 v2, 0x0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/Base64OutputStream;->u:Lcom/netflix/android/moneyball/fields/ActionField;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_f

    :cond_16
    const/4 v2, 0x0

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lo/Base64OutputStream;->x:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/Base64OutputStream;->y:Lcom/netflix/android/moneyball/fields/ActionField;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_10

    :cond_17
    const/4 v2, 0x0

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/Base64OutputStream;->z:Lcom/netflix/android/moneyball/fields/ActionField;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_11

    :cond_18
    const/4 v2, 0x0

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/Base64OutputStream;->C:Lcom/netflix/android/moneyball/fields/OptionField;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_12

    :cond_19
    const/4 v2, 0x0

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/Base64OutputStream;->A:Ljava/lang/Boolean;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_13

    :cond_1a
    const/4 v2, 0x0

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/Base64OutputStream;->D:Ljava/lang/String;

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_14

    :cond_1b
    const/4 v2, 0x0

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/Base64OutputStream;->B:Ljava/lang/String;

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_15

    :cond_1c
    const/4 v2, 0x0

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/Base64OutputStream;->I:Ljava/lang/String;

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_16

    :cond_1d
    const/4 v2, 0x0

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/Base64OutputStream;->E:Ljava/lang/String;

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_1e
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/Base64OutputStream;->G:Z

    if-eqz v2, :cond_1f

    goto :goto_18

    :cond_1f
    move v1, v2

    :goto_18
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/Base64OutputStream;->F:Ljava/lang/String;

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_19

    :cond_20
    const/4 v1, 0x0

    :goto_19
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/Base64OutputStream;->H:Ljava/lang/String;

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1a

    :cond_21
    const/4 v1, 0x0

    :goto_1a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/Base64OutputStream;->K:Ljava/lang/String;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_22
    add-int/2addr v0, v3

    return v0
.end method

.method public final i()Z
    .locals 1

    .line 422
    iget-boolean v0, p0, Lo/Base64OutputStream;->i:Z

    return v0
.end method

.method public final j()Lcom/netflix/android/moneyball/fields/ChoiceField;
    .locals 1

    .line 423
    iget-object v0, p0, Lo/Base64OutputStream;->f:Lcom/netflix/android/moneyball/fields/ChoiceField;

    return-object v0
.end method

.method public final k()Lcom/netflix/android/moneyball/fields/StringField;
    .locals 1

    .line 430
    iget-object v0, p0, Lo/Base64OutputStream;->k:Lcom/netflix/android/moneyball/fields/StringField;

    return-object v0
.end method

.method public final l()Lcom/netflix/android/moneyball/fields/StringField;
    .locals 1

    .line 432
    iget-object v0, p0, Lo/Base64OutputStream;->r:Lcom/netflix/android/moneyball/fields/StringField;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 429
    iget-object v0, p0, Lo/Base64OutputStream;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .line 428
    iget-object v0, p0, Lo/Base64OutputStream;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Lcom/netflix/android/moneyball/fields/StringField;
    .locals 1

    .line 431
    iget-object v0, p0, Lo/Base64OutputStream;->n:Lcom/netflix/android/moneyball/fields/StringField;

    return-object v0
.end method

.method public final p()Lcom/netflix/android/moneyball/fields/ActionField;
    .locals 1

    .line 439
    iget-object v0, p0, Lo/Base64OutputStream;->u:Lcom/netflix/android/moneyball/fields/ActionField;

    return-object v0
.end method

.method public final q()Lcom/netflix/android/moneyball/fields/StringField;
    .locals 1

    .line 433
    iget-object v0, p0, Lo/Base64OutputStream;->q:Lcom/netflix/android/moneyball/fields/StringField;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .line 437
    iget-object v0, p0, Lo/Base64OutputStream;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final s()I
    .locals 1

    .line 440
    iget v0, p0, Lo/Base64OutputStream;->x:I

    return v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    .line 436
    iget-object v0, p0, Lo/Base64OutputStream;->t:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CardPayParsedData(isRecognizedFormerMember="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/Base64OutputStream;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", paymentLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64OutputStream;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasFreeTrial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/Base64OutputStream;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasMopOnFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/Base64OutputStream;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasValidMop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/Base64OutputStream;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", giftCodeMopRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/Base64OutputStream;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", paymentChoice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64OutputStream;->f:Lcom/netflix/android/moneyball/fields/ChoiceField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cardChoice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64OutputStream;->h:Lcom/netflix/android/moneyball/fields/OptionField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", planPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64OutputStream;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mopLogoUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64OutputStream;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", paymentChoiceMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64OutputStream;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", emvco3dsDeviceDataRequestUrlValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64OutputStream;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", emvco3dsDeviceDataRequestTokenValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64OutputStream;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", emvco3dsAuthenticationWindowSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64OutputStream;->k:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", emvco3dsAuthenticationResponseURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64OutputStream;->n:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", emvco3dsDeviceDataResponseFallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64OutputStream;->r:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", emvco3dsDeviceDataResponseToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64OutputStream;->q:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldRunEmvcoCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/Base64OutputStream;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEditMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/Base64OutputStream;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userMessageKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64OutputStream;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currentPlanId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64OutputStream;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", freeTrialEndDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64OutputStream;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", changePaymentAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64OutputStream;->u:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", noOfPaymentOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/Base64OutputStream;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nextAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64OutputStream;->y:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startMembershipAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64OutputStream;->z:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", giftChoiceField="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64OutputStream;->C:Lcom/netflix/android/moneyball/fields/OptionField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isGiftOnlyMembership="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64OutputStream;->A:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", touText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64OutputStream;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", termsOfUseMinAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64OutputStream;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", planPriceString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64OutputStream;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", billingFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64OutputStream;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasEligibleOffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/Base64OutputStream;->G:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", offerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64OutputStream;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", offerPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64OutputStream;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", offerEndDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64OutputStream;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Z
    .locals 1

    .line 449
    iget-boolean v0, p0, Lo/Base64OutputStream;->G:Z

    return v0
.end method

.method public final v()Lcom/netflix/android/moneyball/fields/ActionField;
    .locals 1

    .line 442
    iget-object v0, p0, Lo/Base64OutputStream;->z:Lcom/netflix/android/moneyball/fields/ActionField;

    return-object v0
.end method

.method public final w()Ljava/lang/Boolean;
    .locals 1

    .line 444
    iget-object v0, p0, Lo/Base64OutputStream;->A:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    .line 447
    iget-object v0, p0, Lo/Base64OutputStream;->I:Ljava/lang/String;

    return-object v0
.end method

.method public final y()Lcom/netflix/android/moneyball/fields/ActionField;
    .locals 1

    .line 441
    iget-object v0, p0, Lo/Base64OutputStream;->y:Lcom/netflix/android/moneyball/fields/ActionField;

    return-object v0
.end method
