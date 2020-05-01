.class public Lcom/firebase/jobdispatcher/ValidationEnforcer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/LinkQualityInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/jobdispatcher/ValidationEnforcer$ValidationException;
    }
.end annotation


# instance fields
.field private final d:Lo/LinkQualityInfo;


# direct methods
.method public constructor <init>(Lo/LinkQualityInfo;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/firebase/jobdispatcher/ValidationEnforcer;->d:Lo/LinkQualityInfo;

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 113
    :cond_0
    new-instance v0, Lcom/firebase/jobdispatcher/ValidationEnforcer$ValidationException;

    const-string v1, "JobParameters is invalid"

    invoke-direct {v0, v1, p1}, Lcom/firebase/jobdispatcher/ValidationEnforcer$ValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v0
.end method


# virtual methods
.method public final b(Lo/IpSecTransform;)V
    .locals 0

    .line 89
    invoke-virtual {p0, p1}, Lcom/firebase/jobdispatcher/ValidationEnforcer;->c(Lo/IpSecTransform;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/firebase/jobdispatcher/ValidationEnforcer;->b(Ljava/util/List;)V

    return-void
.end method

.method public c(Lo/IpSecTransform;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/IpSecTransform;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/firebase/jobdispatcher/ValidationEnforcer;->d:Lo/LinkQualityInfo;

    invoke-interface {v0, p1}, Lo/LinkQualityInfo;->c(Lo/IpSecTransform;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
