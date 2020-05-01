.class public abstract Lo/ApfStats;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/widget/SearchView;Ljava/lang/CharSequence;Z)Lo/ApfStats;
    .locals 1

    .line 13
    new-instance v0, Lo/WifiKey;

    invoke-direct {v0, p0, p1, p2}, Lo/WifiKey;-><init>(Landroid/widget/SearchView;Ljava/lang/CharSequence;Z)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Landroid/widget/SearchView;
.end method

.method public abstract c()Ljava/lang/CharSequence;
.end method
