.class Lo/JQ;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lo/JS;


# direct methods
.method public constructor <init>(Lo/JS;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/JQ;->b:Lo/JS;

    iput-object p2, p0, Lo/JQ;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lo/JQ;->b:Lo/JS;

    iget-object v1, p0, Lo/JQ;->a:Ljava/util/List;

    check-cast p1, Lo/NfcEvent$StateListAnimator;

    invoke-static {v0, v1, p1}, Lo/JS;->e(Lo/JS;Ljava/util/List;Lo/NfcEvent$StateListAnimator;)V

    return-void
.end method
