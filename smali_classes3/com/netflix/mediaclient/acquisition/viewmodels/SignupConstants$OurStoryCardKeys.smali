.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$OurStoryCardKeys;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OurStoryCardKeys"
.end annotation


# static fields
.field public static final IMAGE:Ljava/lang/String; = "image"

.field public static final IMAGE_URL_TEMPLATE:Ljava/lang/String; = "imageUrlTemplate"

.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$OurStoryCardKeys;

.field public static final LOWEST_PLAN_PRICE:Ljava/lang/String; = "lowest_plan_price"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 677
    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$OurStoryCardKeys;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$OurStoryCardKeys;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$OurStoryCardKeys;->INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$OurStoryCardKeys;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
