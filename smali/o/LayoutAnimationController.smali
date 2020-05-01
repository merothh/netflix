.class public final Lo/LayoutAnimationController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Explode;


# instance fields
.field private final a:I

.field private final b:Lo/InputBinding;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final g:Lo/RotateAnimation;


# direct methods
.method public constructor <init>(Lo/InputBinding;Lo/RotateAnimation;)V
    .locals 1

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/LayoutAnimationController;->b:Lo/InputBinding;

    iput-object p2, p0, Lo/LayoutAnimationController;->g:Lo/RotateAnimation;

    .line 12
    iget-object p1, p0, Lo/LayoutAnimationController;->g:Lo/RotateAnimation;

    invoke-virtual {p1}, Lo/RotateAnimation;->b()Z

    move-result p1

    iput-boolean p1, p0, Lo/LayoutAnimationController;->e:Z

    .line 14
    iget-object p1, p0, Lo/LayoutAnimationController;->b:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->qU:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/LayoutAnimationController;->c:Ljava/lang/String;

    .line 23
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->co:I

    iput p1, p0, Lo/LayoutAnimationController;->a:I

    .line 25
    iget-object p1, p0, Lo/LayoutAnimationController;->g:Lo/RotateAnimation;

    invoke-virtual {p1}, Lo/RotateAnimation;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/LayoutAnimationController;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lo/LayoutAnimationController;->e:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lo/LayoutAnimationController;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/LayoutAnimationController;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lo/LayoutAnimationController;->g:Lo/RotateAnimation;

    invoke-virtual {v0}, Lo/RotateAnimation;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->jk:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->jm:I

    .line 20
    :goto_0
    iget-object v1, p0, Lo/LayoutAnimationController;->b:Lo/InputBinding;

    invoke-virtual {v1, v0}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 23
    iget v0, p0, Lo/LayoutAnimationController;->a:I

    return v0
.end method
