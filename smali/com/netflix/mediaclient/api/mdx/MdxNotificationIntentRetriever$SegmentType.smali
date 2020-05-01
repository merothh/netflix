.class public final enum Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SegmentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;

.field public static final enum b:Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;

.field public static final enum c:Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;

.field public static final enum e:Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;

    const/4 v1, 0x0

    const-string v2, "Unknown"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;->e:Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;

    const/4 v2, 0x1

    const-string v3, "Intro"

    const-string v4, "INTRO"

    invoke-direct {v0, v3, v2, v4}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;->c:Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;

    const/4 v3, 0x2

    const-string v4, "Recap"

    const-string v5, "RECAP"

    invoke-direct {v0, v4, v3, v5}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;->b:Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;

    .line 16
    sget-object v4, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;->e:Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;->c:Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;->b:Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;->a:[Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;->d:Ljava/lang/String;

    return-void
.end method

.method public static e(Ljava/lang/String;)Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;
    .locals 6

    .line 33
    invoke-static {}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;->values()[Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 34
    invoke-virtual {v4}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "SegmentType"

    const-string v1, "fromName - unknown type - type: %s"

    .line 39
    invoke-static {p0, v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 40
    sget-object p0, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;->e:Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;
    .locals 1

    .line 16
    const-class v0, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;
    .locals 1

    .line 16
    sget-object v0, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;->a:[Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;->d:Ljava/lang/String;

    return-object v0
.end method
