.class Lo/bg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final c:Lo/bc$3;


# direct methods
.method public constructor <init>(Lo/bc$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/bg;->c:Lo/bc$3;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lo/bg;->c:Lo/bc$3;

    invoke-static {v0, p1, p2}, Lo/bc$3;->b(Lo/bc$3;Landroid/content/DialogInterface;I)V

    return-void
.end method
