.class public final Lo/InputMethodSubtype;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/TextToSpeech;


# instance fields
.field private final c:Lo/InputMethodSession;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/InputMethodSession;Ljava/lang/String;)V
    .locals 1

    const-string v0, "cache"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageKey"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/InputMethodSubtype;->c:Lo/InputMethodSession;

    iput-object p2, p0, Lo/InputMethodSubtype;->d:Ljava/lang/String;

    return-void
.end method

.method private final e(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "creditCardSecurityCode"

    .line 20
    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    const-string v0, "debitCardSecurityCode"

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    const-string v0, "password"

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "fieldId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Lo/InputMethodSubtype;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lo/InputMethodSubtype;->c:Lo/InputMethodSession;

    iget-object v1, p0, Lo/InputMethodSubtype;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lo/InputMethodSession;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
