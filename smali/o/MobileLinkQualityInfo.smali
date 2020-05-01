.class public Lo/MobileLinkQualityInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final e:Lo/MobileLinkQualityInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/MobileLinkQualityInfo;

    invoke-direct {v0}, Lo/MobileLinkQualityInfo;-><init>()V

    sput-object v0, Lo/MobileLinkQualityInfo;->e:Lo/MobileLinkQualityInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
