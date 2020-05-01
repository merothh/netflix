.class Lo/bd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final a:Lo/bc;


# direct methods
.method public constructor <init>(Lo/bc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/bd;->a:Lo/bc;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lo/bd;->a:Lo/bc;

    invoke-static {v0, p1, p2}, Lo/bc;->d(Lo/bc;Landroid/content/DialogInterface;I)V

    return-void
.end method
