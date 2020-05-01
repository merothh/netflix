.class Lo/CT$Application;
.super Lo/PendingIntent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field final synthetic b:Lo/CT;


# direct methods
.method private constructor <init>(Lo/CT;Landroid/content/Context;)V
    .locals 1

    .line 425
    iput-object p1, p0, Lo/CT$Application;->b:Lo/CT;

    .line 426
    new-instance p1, Landroid/view/ContextThemeWrapper;

    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->I:I

    invoke-direct {p1, p2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1}, Lo/PendingIntent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/CT;Landroid/content/Context;Lo/CT$4;)V
    .locals 0

    .line 424
    invoke-direct {p0, p1, p2}, Lo/CT$Application;-><init>(Lo/CT;Landroid/content/Context;)V

    return-void
.end method
