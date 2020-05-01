.class public Lo/xS;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final b:Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/xS;->b:Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo/xS;->b:Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;

    check-cast p1, Lcom/google/firebase/iid/InstanceIdResult;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;->a(Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;Lcom/google/firebase/iid/InstanceIdResult;)V

    return-void
.end method
