.class abstract Lcom/netflix/model/survey/$AutoValue_Survey;
.super Lcom/netflix/model/survey/$$AutoValue_Survey;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/survey/$AutoValue_Survey$Activity;
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/model/survey/SurveyQuestion;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/netflix/model/survey/$$AutoValue_Survey;-><init>(Ljava/util/List;)V

    return-void
.end method
