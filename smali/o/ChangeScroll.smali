.class public abstract Lo/ChangeScroll;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Explode;


# instance fields
.field private final a:Lo/InputBinding;

.field private final b:Ljava/lang/String;

.field private final c:Lo/Cloneable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Cloneable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lo/TextClassifierImpl;


# direct methods
.method public constructor <init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassifierService;)V
    .locals 1

    const-string v0, "signupNetworkManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModel"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ChangeScroll;->d:Lo/TextClassifierImpl;

    iput-object p2, p0, Lo/ChangeScroll;->a:Lo/InputBinding;

    .line 23
    new-instance p1, Lo/Cloneable;

    invoke-direct {p1}, Lo/Cloneable;-><init>()V

    .line 24
    invoke-virtual {p3}, Lo/TextClassifierService;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/Cloneable;->e(Ljava/lang/Object;)V

    .line 23
    iput-object p1, p0, Lo/ChangeScroll;->c:Lo/Cloneable;

    return-void
.end method

.method public static final synthetic c(Lo/ChangeScroll;)Lo/InputBinding;
    .locals 0

    .line 14
    iget-object p0, p0, Lo/ChangeScroll;->a:Lo/InputBinding;

    return-object p0
.end method

.method public static synthetic c(Lo/ChangeScroll;Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 27
    check-cast p3, Lo/TextClassificationSessionFactory;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lo/ChangeScroll;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: performAction"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected final b()Lo/TextClassifierImpl;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/ChangeScroll;->d:Lo/TextClassifierImpl;

    return-object v0
.end method

.method public final b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/android/moneyball/fields/ActionField;",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lo/TextClassificationSessionFactory;",
            ")V"
        }
    .end annotation

    const-string v0, "loadingLiveData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Lo/Cloneable;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 31
    invoke-virtual {p2, v2}, Lo/Cloneable;->e(Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lo/ChangeScroll;->d:Lo/TextClassifierImpl;

    .line 35
    invoke-virtual {p0}, Lo/ChangeScroll;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lo/TextClassificationSessionFactory;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    .line 37
    new-instance v4, Lo/ChangeScroll$TaskDescription;

    invoke-direct {v4, p0, p2, p3}, Lo/ChangeScroll$TaskDescription;-><init>(Lo/ChangeScroll;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    check-cast v4, Lo/TextClassificationSessionFactory;

    aput-object v4, v3, v1

    .line 33
    invoke-virtual {v0, p1, v2, v3}, Lo/TextClassifierImpl;->c(Lcom/netflix/android/moneyball/fields/ActionField;Ljava/lang/String;[Lo/TextClassificationSessionFactory;)V

    :cond_1
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/ChangeScroll;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lo/ChangeScroll;->c:Lo/Cloneable;

    return-object v0
.end method
