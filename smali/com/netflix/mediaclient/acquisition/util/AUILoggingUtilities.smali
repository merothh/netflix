.class public final Lcom/netflix/mediaclient/acquisition/util/AUILoggingUtilities;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/acquisition/util/AUILoggingUtilities$AUIDebugSessionLogger;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/util/AUILoggingUtilities;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/acquisition/util/AUILoggingUtilities;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/util/AUILoggingUtilities;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/util/AUILoggingUtilities;->INSTANCE:Lcom/netflix/mediaclient/acquisition/util/AUILoggingUtilities;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
