.class public final Lcom/netflix/mediaclient/acquisition/util/SafetyNetClientWrapper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/util/SafetyNetClientWrapper;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final getClient()Lcom/google/android/gms/safetynet/SafetyNetClient;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/util/SafetyNetClientWrapper;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/safetynet/SafetyNet;->getClient(Landroid/app/Activity;)Lcom/google/android/gms/safetynet/SafetyNetClient;

    move-result-object v0

    return-object v0
.end method
