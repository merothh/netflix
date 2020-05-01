.class Lcom/netflix/mediaclient/ui/launch/LaunchActivity$7;
.super Lo/Dc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->c(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/api/credentials/Credential;Lcom/netflix/mediaclient/service/user/UserAgent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Dc<",
        "Lcom/netflix/mediaclient/android/app/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/api/credentials/Credential;

.field final synthetic b:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Ljava/lang/String;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 0

    .line 1494
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$7;->b:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$7;->a:Lcom/google/android/gms/auth/api/credentials/Credential;

    invoke-direct {p0, p2}, Lo/Dc;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 1497
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$7;->b:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$7;->a:Lcom/google/android/gms/auth/api/credentials/Credential;

    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->d(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/netflix/mediaclient/android/app/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1494
    check-cast p1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$7;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
