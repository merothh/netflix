.class public interface abstract Lo/NonSdkApiUsedViolation;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/NonSdkApiUsedViolation$StateListAnimator;
    }
.end annotation


# static fields
.field public static final d:Lo/NonSdkApiUsedViolation$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lo/NonSdkApiUsedViolation$StateListAnimator;->c:Lo/NonSdkApiUsedViolation$StateListAnimator;

    sput-object v0, Lo/NonSdkApiUsedViolation;->d:Lo/NonSdkApiUsedViolation$StateListAnimator;

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract e(Ljava/util/List;Lo/IntentReceiverLeakedViolation;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lo/IntentReceiverLeakedViolation;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/RecommendationInfo;",
            ">;"
        }
    .end annotation
.end method
