.class public final Lo/FactoryTest;
.super Lo/ChildZygoteProcess;
.source ""

# interfaces
.implements Lo/FileUtils;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/FactoryTest$TaskDescription;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Boolean;

.field private d:Ljava/lang/String;

.field private final e:Lo/aka;

.field private final f:I

.field private final h:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1}, Lo/ChildZygoteProcess;-><init>(Landroid/view/View;)V

    .line 46
    new-instance v0, Lcom/netflix/android/mdxpanel/postplay/MdxPostPlayUIViewImpl$lazyViews$2;

    invoke-direct {v0, p0, p1}, Lcom/netflix/android/mdxpanel/postplay/MdxPostPlayUIViewImpl$lazyViews$2;-><init>(Lo/FactoryTest;Landroid/view/View;)V

    check-cast v0, Lo/alB;

    invoke-static {v0}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/FactoryTest;->e:Lo/aka;

    .line 71
    invoke-direct {p0}, Lo/FactoryTest;->t()Landroid/view/ViewStub;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lo/FactoryTest;->x()Lo/FactoryTest$TaskDescription;

    move-result-object p1

    invoke-virtual {p1}, Lo/FactoryTest$TaskDescription;->g()Landroid/view/View;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lo/FactoryTest;->h:Landroid/view/View;

    .line 73
    invoke-virtual {p0}, Lo/FactoryTest;->d()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, p0, Lo/FactoryTest;->f:I

    return-void
.end method

.method public static final synthetic a(Lo/FactoryTest;)Ljava/lang/Boolean;
    .locals 0

    .line 27
    iget-object p0, p0, Lo/FactoryTest;->b:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static final synthetic c(Lo/FactoryTest;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lo/FactoryTest;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic e(Lo/FactoryTest;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lo/FactoryTest;->d:Ljava/lang/String;

    return-object p0
.end method

.method private final t()Landroid/view/ViewStub;
    .locals 2

    .line 44
    invoke-virtual {p0}, Lo/FactoryTest;->p()Landroid/view/View;

    move-result-object v0

    sget v1, Lo/CancellationSignal$Activity;->w:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    return-object v0
.end method

.method private final x()Lo/FactoryTest$TaskDescription;
    .locals 1

    iget-object v0, p0, Lo/FactoryTest;->e:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/FactoryTest$TaskDescription;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 73
    iget v0, p0, Lo/FactoryTest;->f:I

    return v0
.end method

.method public b()V
    .locals 2

    .line 76
    invoke-direct {p0}, Lo/FactoryTest;->x()Lo/FactoryTest$TaskDescription;

    move-result-object v0

    invoke-virtual {v0}, Lo/FactoryTest$TaskDescription;->g()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showId"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "episodeId"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lo/FactoryTest;->x()Lo/FactoryTest$TaskDescription;

    move-result-object v0

    invoke-virtual {v0}, Lo/FactoryTest$TaskDescription;->e()Lo/ImageSwitcher;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-direct {p0}, Lo/FactoryTest;->x()Lo/FactoryTest$TaskDescription;

    move-result-object p1

    invoke-virtual {p1}, Lo/FactoryTest$TaskDescription;->c()Lo/ImageSwitcher;

    move-result-object p1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iput-object p3, p0, Lo/FactoryTest;->a:Ljava/lang/String;

    .line 93
    iput-object p4, p0, Lo/FactoryTest;->d:Ljava/lang/String;

    .line 94
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lo/FactoryTest;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 71
    iget-object v0, p0, Lo/FactoryTest;->h:Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 80
    invoke-direct {p0}, Lo/FactoryTest;->x()Lo/FactoryTest$TaskDescription;

    move-result-object v0

    invoke-virtual {v0}, Lo/FactoryTest$TaskDescription;->g()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public j()V
    .locals 2

    const/4 v0, 0x0

    .line 84
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lo/FactoryTest;->a:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lo/FactoryTest;->d:Ljava/lang/String;

    .line 86
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lo/FactoryTest;->b:Ljava/lang/Boolean;

    return-void
.end method
