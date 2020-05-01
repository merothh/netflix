.class Lo/Ri;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final b:Lo/Re;


# direct methods
.method public constructor <init>(Lo/Re;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Ri;->b:Lo/Re;

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lo/Ri;->b:Lo/Re;

    invoke-static {v0, p1}, Lo/Re;->b(Lo/Re;Landroid/content/DialogInterface;)V

    return-void
.end method
