.class Lcom/viewpagerindicator/android/osp/ViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# instance fields
.field final synthetic this$0:Lcom/viewpagerindicator/android/osp/ViewPager;


# direct methods
.method private constructor <init>(Lcom/viewpagerindicator/android/osp/ViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/viewpagerindicator/android/osp/ViewPager$PagerObserver;->this$0:Lcom/viewpagerindicator/android/osp/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viewpagerindicator/android/osp/ViewPager;Lcom/viewpagerindicator/android/osp/ViewPager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/viewpagerindicator/android/osp/ViewPager$PagerObserver;-><init>(Lcom/viewpagerindicator/android/osp/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager$PagerObserver;->this$0:Lcom/viewpagerindicator/android/osp/ViewPager;

    invoke-virtual {v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->dataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager$PagerObserver;->this$0:Lcom/viewpagerindicator/android/osp/ViewPager;

    invoke-virtual {v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->dataSetChanged()V

    return-void
.end method
