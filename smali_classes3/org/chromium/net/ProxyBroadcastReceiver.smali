.class final Lorg/chromium/net/ProxyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field private final mListener:Lorg/chromium/net/ProxyChangeListener;


# direct methods
.method constructor <init>(Lorg/chromium/net/ProxyChangeListener;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/chromium/net/ProxyBroadcastReceiver;->mListener:Lorg/chromium/net/ProxyChangeListener;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.PROXY_CHANGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 22
    iget-object p1, p0, Lorg/chromium/net/ProxyBroadcastReceiver;->mListener:Lorg/chromium/net/ProxyChangeListener;

    invoke-virtual {p1}, Lorg/chromium/net/ProxyChangeListener;->updateProxyConfigFromConnectivityManager()V

    :cond_0
    return-void
.end method
