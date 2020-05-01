.class public final Lo/InputEventReceiver;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Lcom/netflix/android/moneyball/fields/ChoiceField;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Z

.field private final i:Ljava/lang/String;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final k:Z

.field private final l:Lcom/netflix/android/moneyball/fields/ActionField;

.field private final m:Z

.field private final n:Ljava/lang/String;

.field private final o:Z

.field private final r:Ljava/lang/String;

.field private s:Lcom/netflix/android/moneyball/fields/BooleanField;

.field private final t:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLcom/netflix/android/moneyball/fields/ChoiceField;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/android/moneyball/fields/ActionField;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/android/moneyball/fields/BooleanField;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/netflix/android/moneyball/fields/ChoiceField;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/netflix/android/moneyball/fields/ActionField;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netflix/android/moneyball/fields/BooleanField;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput-boolean v1, v0, Lo/InputEventReceiver;->d:Z

    move-object v1, p2

    iput-object v1, v0, Lo/InputEventReceiver;->e:Lcom/netflix/android/moneyball/fields/ChoiceField;

    move-object v1, p3

    iput-object v1, v0, Lo/InputEventReceiver;->a:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lo/InputEventReceiver;->c:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lo/InputEventReceiver;->b:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lo/InputEventReceiver;->j:Ljava/util/List;

    move v1, p7

    iput-boolean v1, v0, Lo/InputEventReceiver;->h:Z

    move-object v1, p8

    iput-object v1, v0, Lo/InputEventReceiver;->f:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lo/InputEventReceiver;->g:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lo/InputEventReceiver;->i:Ljava/lang/String;

    move v1, p11

    iput-boolean v1, v0, Lo/InputEventReceiver;->k:Z

    move-object v1, p12

    iput-object v1, v0, Lo/InputEventReceiver;->l:Lcom/netflix/android/moneyball/fields/ActionField;

    move v1, p13

    iput-boolean v1, v0, Lo/InputEventReceiver;->m:Z

    move/from16 v1, p14

    iput-boolean v1, v0, Lo/InputEventReceiver;->o:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lo/InputEventReceiver;->n:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lo/InputEventReceiver;->t:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lo/InputEventReceiver;->r:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lo/InputEventReceiver;->s:Lcom/netflix/android/moneyball/fields/BooleanField;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lo/InputEventReceiver;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/netflix/android/moneyball/fields/ChoiceField;
    .locals 1

    .line 283
    iget-object v0, p0, Lo/InputEventReceiver;->e:Lcom/netflix/android/moneyball/fields/ChoiceField;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lo/InputEventReceiver;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Lo/InputEventReceiver;->d:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lo/InputEventReceiver;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/InputEventReceiver;

    if-eqz v0, :cond_0

    check-cast p1, Lo/InputEventReceiver;

    iget-boolean v0, p0, Lo/InputEventReceiver;->d:Z

    iget-boolean v1, p1, Lo/InputEventReceiver;->d:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/InputEventReceiver;->e:Lcom/netflix/android/moneyball/fields/ChoiceField;

    iget-object v1, p1, Lo/InputEventReceiver;->e:Lcom/netflix/android/moneyball/fields/ChoiceField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/InputEventReceiver;->a:Ljava/lang/String;

    iget-object v1, p1, Lo/InputEventReceiver;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/InputEventReceiver;->c:Ljava/lang/String;

    iget-object v1, p1, Lo/InputEventReceiver;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/InputEventReceiver;->b:Ljava/lang/String;

    iget-object v1, p1, Lo/InputEventReceiver;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/InputEventReceiver;->j:Ljava/util/List;

    iget-object v1, p1, Lo/InputEventReceiver;->j:Ljava/util/List;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/InputEventReceiver;->h:Z

    iget-boolean v1, p1, Lo/InputEventReceiver;->h:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/InputEventReceiver;->f:Ljava/lang/String;

    iget-object v1, p1, Lo/InputEventReceiver;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/InputEventReceiver;->g:Ljava/lang/String;

    iget-object v1, p1, Lo/InputEventReceiver;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/InputEventReceiver;->i:Ljava/lang/String;

    iget-object v1, p1, Lo/InputEventReceiver;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/InputEventReceiver;->k:Z

    iget-boolean v1, p1, Lo/InputEventReceiver;->k:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/InputEventReceiver;->l:Lcom/netflix/android/moneyball/fields/ActionField;

    iget-object v1, p1, Lo/InputEventReceiver;->l:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/InputEventReceiver;->m:Z

    iget-boolean v1, p1, Lo/InputEventReceiver;->m:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/InputEventReceiver;->o:Z

    iget-boolean v1, p1, Lo/InputEventReceiver;->o:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/InputEventReceiver;->n:Ljava/lang/String;

    iget-object v1, p1, Lo/InputEventReceiver;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/InputEventReceiver;->t:Ljava/lang/String;

    iget-object v1, p1, Lo/InputEventReceiver;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/InputEventReceiver;->r:Ljava/lang/String;

    iget-object v1, p1, Lo/InputEventReceiver;->r:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/InputEventReceiver;->s:Lcom/netflix/android/moneyball/fields/BooleanField;

    iget-object p1, p1, Lo/InputEventReceiver;->s:Lcom/netflix/android/moneyball/fields/BooleanField;

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

    .line 289
    iget-object v0, p0, Lo/InputEventReceiver;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lo/InputEventReceiver;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .line 288
    iget-boolean v0, p0, Lo/InputEventReceiver;->h:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Lo/InputEventReceiver;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/InputEventReceiver;->e:Lcom/netflix/android/moneyball/fields/ChoiceField;

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

    iget-object v2, p0, Lo/InputEventReceiver;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/InputEventReceiver;->c:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/InputEventReceiver;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/InputEventReceiver;->j:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/InputEventReceiver;->h:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :cond_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/InputEventReceiver;->f:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/InputEventReceiver;->g:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/InputEventReceiver;->i:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/InputEventReceiver;->k:Z

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    :cond_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/InputEventReceiver;->l:Lcom/netflix/android/moneyball/fields/ActionField;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_b
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/InputEventReceiver;->m:Z

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    :cond_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/InputEventReceiver;->o:Z

    if-eqz v2, :cond_d

    goto :goto_9

    :cond_d
    move v1, v2

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/InputEventReceiver;->n:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_e
    const/4 v1, 0x0

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/InputEventReceiver;->t:Ljava/lang/String;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_f
    const/4 v1, 0x0

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/InputEventReceiver;->r:Ljava/lang/String;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_10
    const/4 v1, 0x0

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/InputEventReceiver;->s:Lcom/netflix/android/moneyball/fields/BooleanField;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_11
    add-int/2addr v0, v3

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lo/InputEventReceiver;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Lcom/netflix/android/moneyball/fields/ActionField;
    .locals 1

    .line 293
    iget-object v0, p0, Lo/InputEventReceiver;->l:Lcom/netflix/android/moneyball/fields/ActionField;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    .line 295
    iget-boolean v0, p0, Lo/InputEventReceiver;->o:Z

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lo/InputEventReceiver;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lo/InputEventReceiver;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lo/InputEventReceiver;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    .line 294
    iget-boolean v0, p0, Lo/InputEventReceiver;->m:Z

    return v0
.end method

.method public final r()Lcom/netflix/android/moneyball/fields/BooleanField;
    .locals 1

    .line 299
    iget-object v0, p0, Lo/InputEventReceiver;->s:Lcom/netflix/android/moneyball/fields/BooleanField;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlanSelectionParsedData(isRecognizedFormerMember="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/InputEventReceiver;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", planChoice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/InputEventReceiver;->e:Lcom/netflix/android/moneyball/fields/ChoiceField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", planDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/InputEventReceiver;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", freeTrialEndDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/InputEventReceiver;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", firstName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/InputEventReceiver;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rowMessages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/InputEventReceiver;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPlanSelectionMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/InputEventReceiver;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", textDisclaimerKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/InputEventReceiver;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", heading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/InputEventReceiver;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subHeading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/InputEventReceiver;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isEditMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/InputEventReceiver;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", planSelectionAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/InputEventReceiver;->l:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasFreeTrial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/InputEventReceiver;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasEligibleOffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/InputEventReceiver;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", offerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/InputEventReceiver;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", offerPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/InputEventReceiver;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultOfferId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/InputEventReceiver;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sawAllPlansField="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/InputEventReceiver;->s:Lcom/netflix/android/moneyball/fields/BooleanField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
