.class Lo/Iterator$Application;
.super Lo/State$ActionBar;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Application"
.end annotation


# instance fields
.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Lo/State$StateListAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/State$StateListAnimator<",
            "Lo/BiConsumer<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Lo/State$StateListAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;",
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;",
            "Lo/State$StateListAnimator<",
            "Lo/BiConsumer<",
            "*>;>;)V"
        }
    .end annotation

    .line 253
    invoke-direct {p0}, Lo/State$ActionBar;-><init>()V

    .line 254
    iput-object p1, p0, Lo/Iterator$Application;->b:Ljava/util/List;

    .line 255
    iput-object p2, p0, Lo/Iterator$Application;->d:Ljava/util/List;

    .line 256
    iput-object p3, p0, Lo/Iterator$Application;->e:Lo/State$StateListAnimator;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 266
    iget-object v0, p0, Lo/Iterator$Application;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(II)Z
    .locals 2

    .line 279
    iget-object v0, p0, Lo/Iterator$Application;->e:Lo/State$StateListAnimator;

    iget-object v1, p0, Lo/Iterator$Application;->b:Ljava/util/List;

    .line 280
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lo/Iterator$Application;->d:Ljava/util/List;

    .line 281
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 279
    invoke-virtual {v0, p1, p2}, Lo/State$StateListAnimator;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c()I
    .locals 1

    .line 261
    iget-object v0, p0, Lo/Iterator$Application;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c(II)Z
    .locals 2

    .line 271
    iget-object v0, p0, Lo/Iterator$Application;->e:Lo/State$StateListAnimator;

    iget-object v1, p0, Lo/Iterator$Application;->b:Ljava/util/List;

    .line 272
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lo/Iterator$Application;->d:Ljava/util/List;

    .line 273
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 271
    invoke-virtual {v0, p1, p2}, Lo/State$StateListAnimator;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public e(II)Ljava/lang/Object;
    .locals 2

    .line 288
    iget-object v0, p0, Lo/Iterator$Application;->e:Lo/State$StateListAnimator;

    iget-object v1, p0, Lo/Iterator$Application;->b:Ljava/util/List;

    .line 289
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lo/Iterator$Application;->d:Ljava/util/List;

    .line 290
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 288
    invoke-virtual {v0, p1, p2}, Lo/State$StateListAnimator;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
