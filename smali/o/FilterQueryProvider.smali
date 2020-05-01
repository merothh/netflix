.class public final Lo/FilterQueryProvider;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/FilterQueryProvider$Application;
    }
.end annotation


# static fields
.field public static final e:Lo/FilterQueryProvider$Application;

.field private static final l:Landroid/content/res/ColorStateList;


# instance fields
.field private final a:Landroid/content/res/ColorStateList;

.field private final b:Landroid/content/res/ColorStateList;

.field private final c:Landroid/content/res/ColorStateList;

.field private final d:Landroid/content/res/ColorStateList;

.field private final f:I

.field private final g:I

.field private final h:Z

.field private final i:I

.field private final j:I

.field private final k:Z

.field private final m:Z

.field private final n:I

.field private final o:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/FilterQueryProvider$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/FilterQueryProvider$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/FilterQueryProvider;->e:Lo/FilterQueryProvider$Application;

    const/4 v0, 0x0

    .line 40
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const-string v1, "ColorStateList.valueOf(DEFAULT_COLOR)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lo/FilterQueryProvider;->l:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public constructor <init>()V
    .locals 16

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1fff

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lo/FilterQueryProvider;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;IIIIZLjava/lang/CharSequence;IZZILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;IIIIZLjava/lang/CharSequence;IZZ)V
    .locals 1

    const-string v0, "strokeColor"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonColor"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textColor"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconColor"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/FilterQueryProvider;->c:Landroid/content/res/ColorStateList;

    iput-object p2, p0, Lo/FilterQueryProvider;->d:Landroid/content/res/ColorStateList;

    iput-object p3, p0, Lo/FilterQueryProvider;->b:Landroid/content/res/ColorStateList;

    iput-object p4, p0, Lo/FilterQueryProvider;->a:Landroid/content/res/ColorStateList;

    iput p5, p0, Lo/FilterQueryProvider;->f:I

    iput p6, p0, Lo/FilterQueryProvider;->i:I

    iput p7, p0, Lo/FilterQueryProvider;->g:I

    iput p8, p0, Lo/FilterQueryProvider;->j:I

    iput-boolean p9, p0, Lo/FilterQueryProvider;->h:Z

    iput-object p10, p0, Lo/FilterQueryProvider;->o:Ljava/lang/CharSequence;

    iput p11, p0, Lo/FilterQueryProvider;->n:I

    iput-boolean p12, p0, Lo/FilterQueryProvider;->k:Z

    iput-boolean p13, p0, Lo/FilterQueryProvider;->m:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;IIIIZLjava/lang/CharSequence;IZZILo/amc;)V
    .locals 14

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 22
    sget-object v1, Lo/FilterQueryProvider;->l:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 23
    sget-object v2, Lo/FilterQueryProvider;->l:Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    .line 24
    sget-object v3, Lo/FilterQueryProvider;->l:Landroid/content/res/ColorStateList;

    goto :goto_2

    :cond_2
    move-object/from16 v3, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    .line 25
    sget-object v4, Lo/FilterQueryProvider;->l:Landroid/content/res/ColorStateList;

    goto :goto_3

    :cond_3
    move-object/from16 v4, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    goto :goto_4

    :cond_4
    move/from16 v5, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const/4 v9, -0x1

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    .line 31
    check-cast v11, Ljava/lang/CharSequence;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    goto :goto_b

    :cond_b
    move/from16 v6, p12

    :goto_b
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_c

    :cond_c
    move/from16 v0, p13

    :goto_c
    move-object p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move/from16 p6, v5

    move/from16 p7, v7

    move/from16 p8, v8

    move/from16 p9, v9

    move/from16 p10, v10

    move-object/from16 p11, v11

    move/from16 p12, v12

    move/from16 p13, v6

    move/from16 p14, v0

    .line 34
    invoke-direct/range {p1 .. p14}, Lo/FilterQueryProvider;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;IIIIZLjava/lang/CharSequence;IZZ)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/res/ColorStateList;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/FilterQueryProvider;->d:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final b()Landroid/content/res/ColorStateList;
    .locals 1

    .line 25
    iget-object v0, p0, Lo/FilterQueryProvider;->a:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final c()Landroid/content/res/ColorStateList;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/FilterQueryProvider;->c:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final d()Landroid/content/res/ColorStateList;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/FilterQueryProvider;->b:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 26
    iget v0, p0, Lo/FilterQueryProvider;->f:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/FilterQueryProvider;

    if-eqz v0, :cond_0

    check-cast p1, Lo/FilterQueryProvider;

    iget-object v0, p0, Lo/FilterQueryProvider;->c:Landroid/content/res/ColorStateList;

    iget-object v1, p1, Lo/FilterQueryProvider;->c:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/FilterQueryProvider;->d:Landroid/content/res/ColorStateList;

    iget-object v1, p1, Lo/FilterQueryProvider;->d:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/FilterQueryProvider;->b:Landroid/content/res/ColorStateList;

    iget-object v1, p1, Lo/FilterQueryProvider;->b:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/FilterQueryProvider;->a:Landroid/content/res/ColorStateList;

    iget-object v1, p1, Lo/FilterQueryProvider;->a:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/FilterQueryProvider;->f:I

    iget v1, p1, Lo/FilterQueryProvider;->f:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/FilterQueryProvider;->i:I

    iget v1, p1, Lo/FilterQueryProvider;->i:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/FilterQueryProvider;->g:I

    iget v1, p1, Lo/FilterQueryProvider;->g:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/FilterQueryProvider;->j:I

    iget v1, p1, Lo/FilterQueryProvider;->j:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/FilterQueryProvider;->h:Z

    iget-boolean v1, p1, Lo/FilterQueryProvider;->h:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/FilterQueryProvider;->o:Ljava/lang/CharSequence;

    iget-object v1, p1, Lo/FilterQueryProvider;->o:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/FilterQueryProvider;->n:I

    iget v1, p1, Lo/FilterQueryProvider;->n:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/FilterQueryProvider;->k:Z

    iget-boolean v1, p1, Lo/FilterQueryProvider;->k:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/FilterQueryProvider;->m:Z

    iget-boolean p1, p1, Lo/FilterQueryProvider;->m:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final f()I
    .locals 1

    .line 29
    iget v0, p0, Lo/FilterQueryProvider;->j:I

    return v0
.end method

.method public final g()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lo/FilterQueryProvider;->h:Z

    return v0
.end method

.method public final h()Ljava/lang/CharSequence;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/FilterQueryProvider;->o:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lo/FilterQueryProvider;->c:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/FilterQueryProvider;->d:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/FilterQueryProvider;->b:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/FilterQueryProvider;->a:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lo/FilterQueryProvider;->f:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lo/FilterQueryProvider;->i:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lo/FilterQueryProvider;->g:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lo/FilterQueryProvider;->j:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/FilterQueryProvider;->h:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/FilterQueryProvider;->o:Ljava/lang/CharSequence;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo/FilterQueryProvider;->n:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lo/FilterQueryProvider;->k:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :cond_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lo/FilterQueryProvider;->m:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :cond_7
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()I
    .locals 1

    .line 28
    iget v0, p0, Lo/FilterQueryProvider;->g:I

    return v0
.end method

.method public final j()I
    .locals 1

    .line 27
    iget v0, p0, Lo/FilterQueryProvider;->i:I

    return v0
.end method

.method public final l()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lo/FilterQueryProvider;->m:Z

    return v0
.end method

.method public final m()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lo/FilterQueryProvider;->k:Z

    return v0
.end method

.method public final n()I
    .locals 1

    .line 32
    iget v0, p0, Lo/FilterQueryProvider;->n:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetflixButtonAttributes(strokeColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/FilterQueryProvider;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", buttonColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/FilterQueryProvider;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/FilterQueryProvider;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", iconColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/FilterQueryProvider;->a:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rippleColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/FilterQueryProvider;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cornerRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/FilterQueryProvider;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", strokeWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/FilterQueryProvider;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iconSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/FilterQueryProvider;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iconCentered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/FilterQueryProvider;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/FilterQueryProvider;->o:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ", initialWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/FilterQueryProvider;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", borderlessRipple="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/FilterQueryProvider;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasTint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/FilterQueryProvider;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
