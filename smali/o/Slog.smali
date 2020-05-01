.class public final Lo/Slog;
.super Lo/ChangeScroll;
.source ""


# instance fields
.field private final a:Lo/Singleton;

.field private final b:Z

.field private final c:Lo/TextClassificationSessionFactory;

.field private final d:Lo/ReflectiveProperty;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassificationSessionFactory;Lo/Singleton;Lo/ReflectiveProperty;Lo/TextClassifierService;)V
    .locals 1

    const-string v0, "signupNetworkManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkRequestResponseListener"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleData"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModel"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1, p2, p6}, Lo/ChangeScroll;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassifierService;)V

    iput-object p3, p0, Lo/Slog;->c:Lo/TextClassificationSessionFactory;

    iput-object p4, p0, Lo/Slog;->a:Lo/Singleton;

    iput-object p5, p0, Lo/Slog;->d:Lo/ReflectiveProperty;

    .line 57
    iget-object p1, p0, Lo/Slog;->d:Lo/ReflectiveProperty;

    invoke-virtual {p1}, Lo/ReflectiveProperty;->b()Z

    move-result p1

    iput-boolean p1, p0, Lo/Slog;->b:Z

    .line 58
    iget-object p1, p0, Lo/Slog;->d:Lo/ReflectiveProperty;

    invoke-virtual {p1}, Lo/ReflectiveProperty;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/Slog;->e:Ljava/lang/String;

    return-void
.end method

.method private final d(Ljava/lang/String;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lo/Slog;->d:Lo/ReflectiveProperty;

    invoke-virtual {v0}, Lo/ReflectiveProperty;->f()Lcom/netflix/android/moneyball/fields/StringField;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/netflix/android/moneyball/fields/StringField;->setValue(Ljava/lang/Object;)V

    .line 46
    :cond_0
    iget-object p1, p0, Lo/Slog;->d:Lo/ReflectiveProperty;

    invoke-virtual {p1}, Lo/ReflectiveProperty;->d()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object p1

    invoke-virtual {p0}, Lo/Slog;->i()Lo/Cloneable;

    move-result-object v0

    iget-object v1, p0, Lo/Slog;->c:Lo/TextClassificationSessionFactory;

    invoke-virtual {p0, p1, v0, v1}, Lo/Slog;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method

.method private final f()V
    .locals 3

    .line 50
    iget-object v0, p0, Lo/Slog;->d:Lo/ReflectiveProperty;

    invoke-virtual {v0}, Lo/ReflectiveProperty;->e()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    invoke-virtual {p0}, Lo/Slog;->h()Lo/Cloneable;

    move-result-object v1

    iget-object v2, p0, Lo/Slog;->c:Lo/TextClassificationSessionFactory;

    invoke-virtual {p0, v0, v1, v2}, Lo/Slog;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lo/Slog;->b:Z

    return v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "paypalSuccessAction"

    .line 37
    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lo/Slog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-direct {p0}, Lo/Slog;->f()V

    :goto_0
    return-void
.end method

.method public final e()V
    .locals 3

    .line 54
    iget-object v0, p0, Lo/Slog;->d:Lo/ReflectiveProperty;

    invoke-virtual {v0}, Lo/ReflectiveProperty;->a()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    invoke-virtual {p0}, Lo/Slog;->g()Lo/Cloneable;

    move-result-object v1

    iget-object v2, p0, Lo/Slog;->c:Lo/TextClassificationSessionFactory;

    invoke-virtual {p0, v0, v1, v2}, Lo/Slog;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method

.method public final g()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lo/Slog;->a:Lo/Singleton;

    invoke-virtual {v0}, Lo/Singleton;->e()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lo/Slog;->a:Lo/Singleton;

    invoke-virtual {v0}, Lo/Singleton;->c()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lo/Slog;->a:Lo/Singleton;

    invoke-virtual {v0}, Lo/Singleton;->b()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lo/Slog;->e:Ljava/lang/String;

    return-object v0
.end method
