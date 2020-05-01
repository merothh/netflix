.class public abstract Lo/PrintDocumentInfo;
.super Lo/RecommendationInfo;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0}, Lo/RecommendationInfo;-><init>(Lo/amc;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lo/PrintDocumentInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract c()Ljava/lang/Long;
.end method

.method public abstract d()Ljava/lang/Long;
.end method

.method public abstract i()Ljava/lang/Integer;
.end method
