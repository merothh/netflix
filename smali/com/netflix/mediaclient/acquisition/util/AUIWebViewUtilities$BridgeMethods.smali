.class public final Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BridgeMethods"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods$Common;,
        Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods$VerifyCard;,
        Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods$MopWebView;,
        Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods$Emvco;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods;->INSTANCE:Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
