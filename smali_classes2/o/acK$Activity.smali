.class Lo/acK$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/acK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Activity"
.end annotation


# instance fields
.field final synthetic a:Lo/acK;


# direct methods
.method private constructor <init>(Lo/acK;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lo/acK$Activity;->a:Lo/acK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/acK;Lo/acK$1;)V
    .locals 0

    .line 202
    invoke-direct {p0, p1}, Lo/acK$Activity;-><init>(Lo/acK;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "nf_age"

    const-string p2, "onCancel button"

    .line 205
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object p1, p0, Lo/acK$Activity;->a:Lo/acK;

    invoke-static {p1}, Lo/acK;->a(Lo/acK;)V

    .line 207
    iget-object p1, p0, Lo/acK$Activity;->a:Lo/acK;

    invoke-static {p1}, Lo/acK;->b(Lo/acK;)V

    return-void
.end method
