.class public final Lo/Rfc822Token;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;


# direct methods
.method public static e(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Landroid/app/Activity;)Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment$ActionBar;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/di/SignupModule;->f(Landroid/app/Activity;)Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment$ActionBar;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lo/akb;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment$ActionBar;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment$ActionBar;
    .locals 2

    .line 27
    iget-object v0, p0, Lo/Rfc822Token;->c:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

    iget-object v1, p0, Lo/Rfc822Token;->a:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v0, v1}, Lo/Rfc822Token;->e(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Landroid/app/Activity;)Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment$ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lo/Rfc822Token;->b()Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment$ActionBar;

    move-result-object v0

    return-object v0
.end method
