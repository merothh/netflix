.class public final Lo/InputMethod;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lo/InputMethodSession;


# direct methods
.method public constructor <init>(Lo/InputMethodSession;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "formCache"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/InputMethod;->a:Lo/InputMethodSession;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lo/InputMethodSubtype;
    .locals 2

    const-string v0, "pageKey"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lo/InputMethodSubtype;

    iget-object v1, p0, Lo/InputMethod;->a:Lo/InputMethodSession;

    invoke-direct {v0, v1, p1}, Lo/InputMethodSubtype;-><init>(Lo/InputMethodSession;Ljava/lang/String;)V

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Lo/SparseRectFArray;
    .locals 2

    const-string v0, "pageKey"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lo/SparseRectFArray;

    iget-object v1, p0, Lo/InputMethod;->a:Lo/InputMethodSession;

    invoke-direct {v0, v1, p1}, Lo/SparseRectFArray;-><init>(Lo/InputMethodSession;Ljava/lang/String;)V

    return-object v0
.end method
