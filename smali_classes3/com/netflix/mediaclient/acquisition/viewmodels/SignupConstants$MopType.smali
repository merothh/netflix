.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$MopType;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MopType"
.end annotation


# static fields
.field public static final EU_DIRECT_DEBIT:Ljava/lang/String; = "EU_DIRECT_DEBIT"

.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$MopType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 743
    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$MopType;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$MopType;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$MopType;->INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$MopType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
