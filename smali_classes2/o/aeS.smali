.class public Lo/aeS;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/android/volley/VolleyError;

.field public c:Landroid/graphics/Bitmap;

.field private final d:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lo/aeU;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/volley/Request;Lo/aeU;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lo/aeU;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/aeS;->e:Ljava/util/LinkedList;

    .line 39
    iput-object p1, p0, Lo/aeS;->d:Lcom/android/volley/Request;

    .line 40
    iget-object p1, p0, Lo/aeS;->e:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Lo/aeU;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lo/aeS;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Lcom/android/volley/VolleyError;
    .locals 1

    .line 51
    iget-object v0, p0, Lo/aeS;->a:Lcom/android/volley/VolleyError;

    return-object v0
.end method

.method public d()Lcom/android/volley/Request$ResourceLocationType;
    .locals 1

    .line 44
    iget-object v0, p0, Lo/aeS;->d:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->d()Lcom/android/volley/Request$ResourceLocationType;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lo/aeS;->a:Lcom/android/volley/VolleyError;

    return-void
.end method
