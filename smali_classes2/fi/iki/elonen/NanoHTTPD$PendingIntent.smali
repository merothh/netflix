.class Lfi/iki/elonen/NanoHTTPD$PendingIntent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lfi/iki/elonen/NanoHTTPD$ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PendingIntent"
.end annotation


# instance fields
.field final synthetic d:Lfi/iki/elonen/NanoHTTPD;


# direct methods
.method private constructor <init>(Lfi/iki/elonen/NanoHTTPD;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$PendingIntent;->d:Lfi/iki/elonen/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfi/iki/elonen/NanoHTTPD;Lfi/iki/elonen/NanoHTTPD$1;)V
    .locals 0

    .line 465
    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoHTTPD$PendingIntent;-><init>(Lfi/iki/elonen/NanoHTTPD;)V

    return-void
.end method


# virtual methods
.method public c()Lfi/iki/elonen/NanoHTTPD$BroadcastReceiver;
    .locals 1

    .line 469
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Fragment;

    invoke-direct {v0}, Lfi/iki/elonen/NanoHTTPD$Fragment;-><init>()V

    return-object v0
.end method
