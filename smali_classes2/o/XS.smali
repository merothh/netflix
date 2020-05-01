.class Lo/XS;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final e:Lo/XN;


# direct methods
.method public constructor <init>(Lo/XN;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/XS;->e:Lo/XN;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lo/XS;->e:Lo/XN;

    invoke-static {v0, p1, p2}, Lo/XN;->b(Lo/XN;Landroid/content/DialogInterface;I)V

    return-void
.end method
