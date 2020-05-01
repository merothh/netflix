.class public interface abstract Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/DiscoveryController;
.super Ljava/lang/Object;
.source "DiscoveryController.java"


# static fields
.field public static final LAUNCH_ARG_INTENT:Ljava/lang/String; = "intent"

.field public static final LAUNCH_ARG_INTENT_VALUE_PLAY:Ljava/lang/String; = "play"

.field public static final LAUNCH_ARG_INTENT_VALUE_SYNC:Ljava/lang/String; = "sync"

.field public static final LAUNCH_ARG_TITLEID:Ljava/lang/String; = "titleid"


# virtual methods
.method public abstract isRemoteDeviceReady(Ljava/lang/String;)V
.end method

.method public abstract launchNetflix(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
