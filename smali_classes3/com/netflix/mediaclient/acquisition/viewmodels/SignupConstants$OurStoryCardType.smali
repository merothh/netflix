.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$OurStoryCardType;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OurStoryCardType"
.end annotation


# static fields
.field public static final DOWNLOAD_AND_GO:Ljava/lang/String; = "downloadAndGo"

.field public static final ILLUSTRATION:Ljava/lang/String; = "illustration"

.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$OurStoryCardType;

.field public static final VLV:Ljava/lang/String; = "vlv"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 663
    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$OurStoryCardType;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$OurStoryCardType;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$OurStoryCardType;->INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$OurStoryCardType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
