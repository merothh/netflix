.class Lo/kM;
.super Ljava/lang/Object;

# interfaces
.implements Lo/FragmentManagerNonConfig$Activity;


# instance fields
.field private final c:Lo/aiW$TaskDescription;


# direct methods
.method public constructor <init>(Lo/aiW$TaskDescription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/kM;->c:Lo/aiW$TaskDescription;

    return-void
.end method


# virtual methods
.method public b(Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lo/kM;->c:Lo/aiW$TaskDescription;

    invoke-static {v0, p1}, Lo/kE;->a(Lo/aiW$TaskDescription;Lcom/android/volley/VolleyError;)V

    return-void
.end method
