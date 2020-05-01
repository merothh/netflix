.class public Lo/xe;
.super Lo/pg;
.source ""


# instance fields
.field private final b:Lo/tg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/cz;Lo/Ah;Lo/tg;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lo/pg;-><init>(Landroid/content/Context;Lo/cz;Lo/Ah;)V

    .line 26
    iput-object p4, p0, Lo/xe;->b:Lo/tg;

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 3

    .line 33
    const-class v0, Lo/xe;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "won\'t change video buffer to %d"

    invoke-static {v0, p1, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
