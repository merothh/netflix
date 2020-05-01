.class public final Lo/WindowCallbacks;
.super Lo/ChangeScroll;
.source ""


# instance fields
.field private final a:Lo/WindowAnimationFrameStats;

.field private final b:Lo/TextClassificationSessionFactory;

.field private final c:Z

.field private final d:Lo/ViewPropertyAnimatorRT;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassifierService;Lo/ViewPropertyAnimatorRT;Lo/TextClassificationSessionFactory;Lo/WindowAnimationFrameStats;)V
    .locals 1

    const-string v0, "signupNetworkManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModel"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleData"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startMemebershipRequestLogger"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lo/ChangeScroll;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassifierService;)V

    iput-object p4, p0, Lo/WindowCallbacks;->d:Lo/ViewPropertyAnimatorRT;

    iput-object p5, p0, Lo/WindowCallbacks;->b:Lo/TextClassificationSessionFactory;

    iput-object p6, p0, Lo/WindowCallbacks;->a:Lo/WindowAnimationFrameStats;

    .line 22
    iget-object p1, p0, Lo/WindowCallbacks;->a:Lo/WindowAnimationFrameStats;

    invoke-virtual {p1}, Lo/WindowAnimationFrameStats;->c()Z

    move-result p1

    iput-boolean p1, p0, Lo/WindowCallbacks;->c:Z

    const-string p1, "verifyCard"

    .line 23
    iput-object p1, p0, Lo/WindowCallbacks;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lo/WindowCallbacks;->c:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/WindowCallbacks;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()V
    .locals 3

    .line 26
    iget-object v0, p0, Lo/WindowCallbacks;->a:Lo/WindowAnimationFrameStats;

    invoke-virtual {v0}, Lo/WindowAnimationFrameStats;->a()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    iget-object v1, p0, Lo/WindowCallbacks;->d:Lo/ViewPropertyAnimatorRT;

    invoke-virtual {v1}, Lo/ViewPropertyAnimatorRT;->d()Lo/Cloneable;

    move-result-object v1

    iget-object v2, p0, Lo/WindowCallbacks;->b:Lo/TextClassificationSessionFactory;

    invoke-virtual {p0, v0, v1, v2}, Lo/WindowCallbacks;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method
