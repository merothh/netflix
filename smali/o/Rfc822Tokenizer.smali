.class public final Lo/Rfc822Tokenizer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/SpellCheckerSubtype;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;


# direct methods
.method public static e(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Landroid/app/Activity;)Lo/SpellCheckerSubtype;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/di/SignupModule;->a(Landroid/app/Activity;)Lo/SpellCheckerSubtype;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lo/akb;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/SpellCheckerSubtype;

    return-object p0
.end method


# virtual methods
.method public d()Lo/SpellCheckerSubtype;
    .locals 2

    .line 27
    iget-object v0, p0, Lo/Rfc822Tokenizer;->d:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

    iget-object v1, p0, Lo/Rfc822Tokenizer;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v0, v1}, Lo/Rfc822Tokenizer;->e(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Landroid/app/Activity;)Lo/SpellCheckerSubtype;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lo/Rfc822Tokenizer;->d()Lo/SpellCheckerSubtype;

    move-result-object v0

    return-object v0
.end method
