.class final synthetic Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$getLifecycle$1;
.super Lkotlin/jvm/internal/MutablePropertyReference0;
.source ""


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/MutablePropertyReference0;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$getLifecycle$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    .line 266
    invoke-static {v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->access$getLifecycleRegistry$p(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)Lo/ClassCastException;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "lifecycleRegistry"

    return-object v0
.end method

.method public getOwner()Lo/amH;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "getLifecycleRegistry()Landroidx/lifecycle/LifecycleRegistry;"

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$getLifecycle$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    .line 266
    check-cast p1, Lo/ClassCastException;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->access$setLifecycleRegistry$p(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Lo/ClassCastException;)V

    return-void
.end method
