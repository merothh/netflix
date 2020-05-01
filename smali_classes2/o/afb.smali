.class final Lo/afb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FragmentManagerNonConfig$Activity;


# instance fields
.field private final b:Lo/HdmiRecordListener$StateListAnimator;


# direct methods
.method public constructor <init>(Lo/HdmiRecordListener$StateListAnimator;)V
    .locals 1

    const-string v0, "frescoNetworkFetcherCallback"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/afb;->b:Lo/HdmiRecordListener$StateListAnimator;

    return-void
.end method


# virtual methods
.method public b(Lcom/android/volley/VolleyError;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lo/afb;->b:Lo/HdmiRecordListener$StateListAnimator;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lo/HdmiRecordListener$StateListAnimator;->b(Ljava/lang/Throwable;)V

    return-void
.end method
