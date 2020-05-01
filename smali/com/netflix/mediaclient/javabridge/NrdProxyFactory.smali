.class public Lcom/netflix/mediaclient/javabridge/NrdProxyFactory;
.super Ljava/lang/Object;
.source "NrdProxyFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance(Lcom/netflix/mediaclient/javabridge/Bridge;)Lcom/netflix/mediaclient/javabridge/NrdProxy;
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V

    return-object v0
.end method
