.class public Lo/Jt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# instance fields
.field private final a:Ljava/lang/Long;

.field private final b:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Jt;->b:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    iput-object p2, p0, Lo/Jt;->a:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 2

    iget-object v0, p0, Lo/Jt;->b:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    iget-object v1, p0, Lo/Jt;->a:Ljava/lang/Long;

    check-cast p1, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->d(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Ljava/lang/Long;Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;)V

    return-void
.end method
