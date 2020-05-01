.class public final Lo/InputMethodManager;
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

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/InputMethodManager;->a:Lo/InputMethodSession;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lo/InputMethodInfo;
    .locals 2

    const-string v0, "pageKey"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lo/InputMethodInfo;

    iget-object v1, p0, Lo/InputMethodManager;->a:Lo/InputMethodSession;

    invoke-direct {v0, v1, p1}, Lo/InputMethodInfo;-><init>(Lo/InputMethodSession;Ljava/lang/String;)V

    return-object v0
.end method
