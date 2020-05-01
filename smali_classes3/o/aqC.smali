.class public Lo/aqC;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lorg/chromium/net/ProxyChangeListener;


# direct methods
.method public constructor <init>(Lorg/chromium/net/ProxyChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/aqC;->e:Lorg/chromium/net/ProxyChangeListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/aqC;->e:Lorg/chromium/net/ProxyChangeListener;

    invoke-static {v0}, Lorg/chromium/net/ProxyChangeListener;->b(Lorg/chromium/net/ProxyChangeListener;)V

    return-void
.end method
