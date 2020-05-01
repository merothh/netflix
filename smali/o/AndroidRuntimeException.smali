.class public final Lo/AndroidRuntimeException;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/netflix/android/moneyball/fields/ActionField;

.field private final b:Lcom/netflix/android/moneyball/fields/ActionField;

.field private final c:Lcom/netflix/android/moneyball/fields/ActionField;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Z

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Z

.field private final k:Lo/RelativeSizeSpan;

.field private final l:Ljava/lang/String;

.field private final m:Lcom/netflix/android/moneyball/fields/ChoiceField;

.field private final n:Ljava/lang/String;

.field private final o:Lo/AlignmentSpan;

.field private final p:Lo/NotificationStats;

.field private final q:Lo/OemLockManager;

.field private final r:Lo/LocaleSpan;

.field private final t:Lo/SingleLineTransformationMethod;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/ActionField;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Lcom/netflix/android/moneyball/fields/ChoiceField;Ljava/lang/String;Ljava/lang/String;Lo/RelativeSizeSpan;Lo/AlignmentSpan;Lo/SingleLineTransformationMethod;Lo/LocaleSpan;Lo/NotificationStats;Lo/OemLockManager;)V
    .locals 8

    move-object v0, p0

    move-object/from16 v1, p14

    move-object/from16 v2, p15

    move-object/from16 v3, p16

    move-object/from16 v4, p17

    move-object/from16 v5, p18

    move-object/from16 v6, p19

    const-string v7, "upgradeOnUsPlanViewModel"

    invoke-static {v1, v7}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "startMembershipButtonViewModel"

    invoke-static {v2, v7}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "koreaCheckBoxesViewModel"

    invoke-static {v3, v7}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "touViewModel"

    invoke-static {v4, v7}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "changePlanViewModel"

    invoke-static {v5, v7}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "editPaymentViewModel"

    invoke-static {v6, v7}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v7, p1

    iput-object v7, v0, Lo/AndroidRuntimeException;->b:Lcom/netflix/android/moneyball/fields/ActionField;

    move-object v7, p2

    iput-object v7, v0, Lo/AndroidRuntimeException;->a:Lcom/netflix/android/moneyball/fields/ActionField;

    move-object v7, p3

    iput-object v7, v0, Lo/AndroidRuntimeException;->c:Lcom/netflix/android/moneyball/fields/ActionField;

    move v7, p4

    iput-boolean v7, v0, Lo/AndroidRuntimeException;->e:Z

    move-object v7, p5

    iput-object v7, v0, Lo/AndroidRuntimeException;->d:Ljava/lang/String;

    move-object v7, p6

    iput-object v7, v0, Lo/AndroidRuntimeException;->i:Ljava/lang/String;

    move-object v7, p7

    iput-object v7, v0, Lo/AndroidRuntimeException;->g:Ljava/lang/String;

    move/from16 v7, p8

    iput-boolean v7, v0, Lo/AndroidRuntimeException;->j:Z

    move/from16 v7, p9

    iput-boolean v7, v0, Lo/AndroidRuntimeException;->f:Z

    move-object/from16 v7, p10

    iput-object v7, v0, Lo/AndroidRuntimeException;->h:Ljava/lang/String;

    move-object/from16 v7, p11

    iput-object v7, v0, Lo/AndroidRuntimeException;->m:Lcom/netflix/android/moneyball/fields/ChoiceField;

    move-object/from16 v7, p12

    iput-object v7, v0, Lo/AndroidRuntimeException;->n:Ljava/lang/String;

    move-object/from16 v7, p13

    iput-object v7, v0, Lo/AndroidRuntimeException;->l:Ljava/lang/String;

    iput-object v1, v0, Lo/AndroidRuntimeException;->k:Lo/RelativeSizeSpan;

    iput-object v2, v0, Lo/AndroidRuntimeException;->o:Lo/AlignmentSpan;

    iput-object v3, v0, Lo/AndroidRuntimeException;->t:Lo/SingleLineTransformationMethod;

    iput-object v4, v0, Lo/AndroidRuntimeException;->r:Lo/LocaleSpan;

    iput-object v5, v0, Lo/AndroidRuntimeException;->p:Lo/NotificationStats;

    iput-object v6, v0, Lo/AndroidRuntimeException;->q:Lo/OemLockManager;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lo/AndroidRuntimeException;->e:Z

    return v0
.end method

.method public final b()Lcom/netflix/android/moneyball/fields/ActionField;
    .locals 1

    .line 156
    iget-object v0, p0, Lo/AndroidRuntimeException;->a:Lcom/netflix/android/moneyball/fields/ActionField;

    return-object v0
.end method

.method public final c()Lcom/netflix/android/moneyball/fields/ActionField;
    .locals 1

    .line 157
    iget-object v0, p0, Lo/AndroidRuntimeException;->c:Lcom/netflix/android/moneyball/fields/ActionField;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lo/AndroidRuntimeException;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lcom/netflix/android/moneyball/fields/ActionField;
    .locals 1

    .line 155
    iget-object v0, p0, Lo/AndroidRuntimeException;->b:Lcom/netflix/android/moneyball/fields/ActionField;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/AndroidRuntimeException;

    if-eqz v0, :cond_0

    check-cast p1, Lo/AndroidRuntimeException;

    iget-object v0, p0, Lo/AndroidRuntimeException;->b:Lcom/netflix/android/moneyball/fields/ActionField;

    iget-object v1, p1, Lo/AndroidRuntimeException;->b:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/AndroidRuntimeException;->a:Lcom/netflix/android/moneyball/fields/ActionField;

    iget-object v1, p1, Lo/AndroidRuntimeException;->a:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/AndroidRuntimeException;->c:Lcom/netflix/android/moneyball/fields/ActionField;

    iget-object v1, p1, Lo/AndroidRuntimeException;->c:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/AndroidRuntimeException;->e:Z

    iget-boolean v1, p1, Lo/AndroidRuntimeException;->e:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/AndroidRuntimeException;->d:Ljava/lang/String;

    iget-object v1, p1, Lo/AndroidRuntimeException;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/AndroidRuntimeException;->i:Ljava/lang/String;

    iget-object v1, p1, Lo/AndroidRuntimeException;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/AndroidRuntimeException;->g:Ljava/lang/String;

    iget-object v1, p1, Lo/AndroidRuntimeException;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/AndroidRuntimeException;->j:Z

    iget-boolean v1, p1, Lo/AndroidRuntimeException;->j:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/AndroidRuntimeException;->f:Z

    iget-boolean v1, p1, Lo/AndroidRuntimeException;->f:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/AndroidRuntimeException;->h:Ljava/lang/String;

    iget-object v1, p1, Lo/AndroidRuntimeException;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/AndroidRuntimeException;->m:Lcom/netflix/android/moneyball/fields/ChoiceField;

    iget-object v1, p1, Lo/AndroidRuntimeException;->m:Lcom/netflix/android/moneyball/fields/ChoiceField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/AndroidRuntimeException;->n:Ljava/lang/String;

    iget-object v1, p1, Lo/AndroidRuntimeException;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/AndroidRuntimeException;->l:Ljava/lang/String;

    iget-object v1, p1, Lo/AndroidRuntimeException;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/AndroidRuntimeException;->k:Lo/RelativeSizeSpan;

    iget-object v1, p1, Lo/AndroidRuntimeException;->k:Lo/RelativeSizeSpan;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/AndroidRuntimeException;->o:Lo/AlignmentSpan;

    iget-object v1, p1, Lo/AndroidRuntimeException;->o:Lo/AlignmentSpan;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/AndroidRuntimeException;->t:Lo/SingleLineTransformationMethod;

    iget-object v1, p1, Lo/AndroidRuntimeException;->t:Lo/SingleLineTransformationMethod;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/AndroidRuntimeException;->r:Lo/LocaleSpan;

    iget-object v1, p1, Lo/AndroidRuntimeException;->r:Lo/LocaleSpan;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/AndroidRuntimeException;->p:Lo/NotificationStats;

    iget-object v1, p1, Lo/AndroidRuntimeException;->p:Lo/NotificationStats;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/AndroidRuntimeException;->q:Lo/OemLockManager;

    iget-object p1, p1, Lo/AndroidRuntimeException;->q:Lo/OemLockManager;

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

    .line 164
    iget-object v0, p0, Lo/AndroidRuntimeException;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lo/AndroidRuntimeException;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lo/AndroidRuntimeException;->f:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lo/AndroidRuntimeException;->b:Lcom/netflix/android/moneyball/fields/ActionField;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/AndroidRuntimeException;->a:Lcom/netflix/android/moneyball/fields/ActionField;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/AndroidRuntimeException;->c:Lcom/netflix/android/moneyball/fields/ActionField;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/AndroidRuntimeException;->e:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/AndroidRuntimeException;->d:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/AndroidRuntimeException;->i:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/AndroidRuntimeException;->g:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/AndroidRuntimeException;->j:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    :cond_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/AndroidRuntimeException;->f:Z

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    :cond_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/AndroidRuntimeException;->h:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/AndroidRuntimeException;->m:Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_a
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/AndroidRuntimeException;->n:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_b
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/AndroidRuntimeException;->l:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_c
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/AndroidRuntimeException;->k:Lo/RelativeSizeSpan;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_d
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/AndroidRuntimeException;->o:Lo/AlignmentSpan;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_e
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/AndroidRuntimeException;->t:Lo/SingleLineTransformationMethod;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_f
    const/4 v2, 0x0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/AndroidRuntimeException;->r:Lo/LocaleSpan;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_d

    :cond_10
    const/4 v2, 0x0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/AndroidRuntimeException;->p:Lo/NotificationStats;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_e

    :cond_11
    const/4 v2, 0x0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/AndroidRuntimeException;->q:Lo/OemLockManager;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_12
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lo/AndroidRuntimeException;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lo/AndroidRuntimeException;->j:Z

    return v0
.end method

.method public final k()Lo/RelativeSizeSpan;
    .locals 1

    .line 168
    iget-object v0, p0, Lo/AndroidRuntimeException;->k:Lo/RelativeSizeSpan;

    return-object v0
.end method

.method public final l()Lo/AlignmentSpan;
    .locals 1

    .line 169
    iget-object v0, p0, Lo/AndroidRuntimeException;->o:Lo/AlignmentSpan;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lo/AndroidRuntimeException;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lo/AndroidRuntimeException;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Lcom/netflix/android/moneyball/fields/ChoiceField;
    .locals 1

    .line 165
    iget-object v0, p0, Lo/AndroidRuntimeException;->m:Lcom/netflix/android/moneyball/fields/ChoiceField;

    return-object v0
.end method

.method public final p()Lo/LocaleSpan;
    .locals 1

    .line 171
    iget-object v0, p0, Lo/AndroidRuntimeException;->r:Lo/LocaleSpan;

    return-object v0
.end method

.method public final q()Lo/NotificationStats;
    .locals 1

    .line 172
    iget-object v0, p0, Lo/AndroidRuntimeException;->p:Lo/NotificationStats;

    return-object v0
.end method

.method public final r()Lo/OemLockManager;
    .locals 1

    .line 173
    iget-object v0, p0, Lo/AndroidRuntimeException;->q:Lo/OemLockManager;

    return-object v0
.end method

.method public final t()Lo/SingleLineTransformationMethod;
    .locals 1

    .line 170
    iget-object v0, p0, Lo/AndroidRuntimeException;->t:Lo/SingleLineTransformationMethod;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfirmParsedData(nextAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AndroidRuntimeException;->b:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", changePlanAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AndroidRuntimeException;->a:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", editPaymentAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AndroidRuntimeException;->c:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isRecognizedFormerMember="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/AndroidRuntimeException;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", firstName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AndroidRuntimeException;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AndroidRuntimeException;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AndroidRuntimeException;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasFreeTrial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/AndroidRuntimeException;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showCvvField="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/AndroidRuntimeException;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AndroidRuntimeException;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", planSelection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AndroidRuntimeException;->m:Lcom/netflix/android/moneyball/fields/ChoiceField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AndroidRuntimeException;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uouPlanId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AndroidRuntimeException;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", upgradeOnUsPlanViewModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AndroidRuntimeException;->k:Lo/RelativeSizeSpan;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startMembershipButtonViewModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AndroidRuntimeException;->o:Lo/AlignmentSpan;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", koreaCheckBoxesViewModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AndroidRuntimeException;->t:Lo/SingleLineTransformationMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", touViewModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AndroidRuntimeException;->r:Lo/LocaleSpan;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", changePlanViewModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AndroidRuntimeException;->p:Lo/NotificationStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", editPaymentViewModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AndroidRuntimeException;->q:Lo/OemLockManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
